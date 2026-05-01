import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_theme.dart';
import '../../../providers/ssh/ssh_connections_provider.dart';
import '../../widgets/common/empty_state.dart';

class SshConnectionsScreen extends ConsumerWidget {
  const SshConnectionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connections = ref.watch(sshConnectionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SSH Connections'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.push('/ssh-connection/edit'),
          ),
        ],
      ),
      body: connections.isEmpty
          ? EmptyState(
              icon: Icons.computer_outlined,
              title: 'No SSH Connections',
              message: 'Add your first SSH connection to connect to remote servers',
              actionLabel: 'Add Connection',
              onAction: () => context.push('/ssh-connection/edit'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: connections.length,
              itemBuilder: (context, index) {
                final connection = connections[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () => _showConnectionDetails(context, ref, connection),
                    borderRadius: BorderRadius.circular(12),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppTheme.primaryColor.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.computer,
                                  color: AppTheme.primaryColor,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      connection.name,
                                      style: Theme.of(context).textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '${connection.username}@${connection.host}:${connection.port}',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        color: AppTheme.textSecondaryDark,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (connection.isFavorite)
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                            ],
                          ),
                          if (connection.tags.isNotEmpty) ...[
                            const SizedBox(height: 12),
                            Wrap(
                              spacing: 8,
                              children: connection.tags.map((tag) {
                                return Chip(
                                  label: Text(tag),
                                  padding: EdgeInsets.zero,
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  labelStyle: Theme.of(context).textTheme.bodySmall,
                                );
                              }).toList(),
                            ),
                          ],
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              _buildInfoChip(
                                context,
                                icon: Icons.security,
                                label: connection.usePrivateKey ? 'Key Auth' : 'Password',
                              ),
                              const SizedBox(width: 8),
                              if (connection.lastConnected != null)
                                _buildInfoChip(
                                  context,
                                  icon: Icons.access_time,
                                  label: _formatLastConnected(connection.lastConnected!),
                                ),
                              const Spacer(),
                              IconButton(
                                icon: const Icon(Icons.edit, size: 20),
                                onPressed: () => context.push('/ssh-connection/edit?id=${connection.id}'),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                icon: Icon(
                                  connection.isFavorite ? Icons.star : Icons.star_border,
                                  size: 20,
                                  color: connection.isFavorite ? Colors.amber : null,
                                ),
                                onPressed: () => ref
                                    .read(sshConnectionsProvider.notifier)
                                    .toggleFavorite(connection.id),
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }

  Widget _buildInfoChip(BuildContext context, {required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppTheme.darkSurface,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: AppTheme.textSecondaryDark),
          const SizedBox(width: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppTheme.textSecondaryDark,
            ),
          ),
        ],
      ),
    );
  }

  void _showConnectionDetails(BuildContext context, WidgetRef ref, connection) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.3,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) {
          return SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          connection.name,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildDetailItem(context, 'Host', connection.host),
                      _buildDetailItem(context, 'Port', connection.port.toString()),
                      _buildDetailItem(context, 'Username', connection.username),
                      _buildDetailItem(
                        context,
                        'Authentication',
                        connection.usePrivateKey ? 'SSH Key' : 'Password',
                      ),
                      if (connection.group != null && connection.group!.isNotEmpty)
                        _buildDetailItem(context, 'Group', connection.group!),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                            _connect(context, ref, connection);
                          },
                          icon: const Icon(Icons.connect_without_contact),
                          label: const Text('Connect'),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                                context.push('/ssh-connection/edit?id=${connection.id}');
                              },
                              icon: const Icon(Icons.edit),
                              label: const Text('Edit'),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () {
                                Navigator.pop(context);
                                _confirmDelete(context, ref, connection);
                              },
                              icon: const Icon(Icons.delete, color: AppTheme.errorColor),
                              label: const Text('Delete', style: TextStyle(color: AppTheme.errorColor)),
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: AppTheme.errorColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildDetailItem(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppTheme.textSecondaryDark,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Future<void> _connect(BuildContext context, WidgetRef ref, connection) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Connecting to ${connection.name}...')),
    );
    // TODO: Implement actual connection
  }

  void _confirmDelete(BuildContext context, WidgetRef ref, connection) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Connection'),
        content: Text('Are you sure you want to delete "${connection.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(sshConnectionsProvider.notifier).deleteConnection(connection.id);
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.errorColor),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  String _formatLastConnected(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);
    
    if (diff.inDays == 0) {
      if (diff.inHours == 0) {
        return '${diff.inMinutes}m ago';
      }
      return '${diff.inHours}h ago';
    } else if (diff.inDays == 1) {
      return 'Yesterday';
    } else {
      return '${diff.inDays}d ago';
    }
  }
}
