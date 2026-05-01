import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_theme.dart';
import '../../../providers/ssh/ssh_connections_provider.dart';
import '../../../providers/project/project_provider.dart';
import '../../widgets/common/empty_state.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connections = ref.watch(sshConnectionsProvider);
    final recentProjects = ref.watch(projectsProvider.notifier).getRecentProjects(limit: 5);
    final favoriteConnections = ref.watch(sshConnectionsProvider.notifier).getFavoriteConnections();

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Coder'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWelcomeCard(context),
              const SizedBox(height: 24),
              _buildQuickActions(context),
              const SizedBox(height: 24),
              if (favoriteConnections.isNotEmpty) ...[
                _buildSectionTitle(context, 'Favorite Connections'),
                const SizedBox(height: 12),
                _buildFavoriteConnectionsList(context, ref, favoriteConnections),
                const SizedBox(height: 24),
              ],
              if (recentProjects.isNotEmpty) ...[
                _buildSectionTitle(context, 'Recent Projects'),
                const SizedBox(height: 12),
                _buildRecentProjectsList(context, ref, recentProjects),
                const SizedBox(height: 24),
              ],
              _buildSectionTitle(context, 'All Connections'),
              const SizedBox(height: 12),
              _buildConnectionsList(context, ref, connections),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.code,
                    color: AppTheme.primaryColor,
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to AI Coder',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Your mobile AI-powered development environment',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppTheme.textSecondaryDark,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Connect to your remote servers via SSH and start coding with AI assistance.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildActionCard(
            context,
            icon: Icons.add_link,
            label: 'New Connection',
            onTap: () => context.push('/ssh-connection/edit'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildActionCard(
            context,
            icon: Icons.chat,
            label: 'AI Chat',
            onTap: () => context.push('/ai-chat'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildActionCard(
            context,
            icon: Icons.terminal,
            label: 'Terminal',
            onTap: () => context.push('/terminal'),
          ),
        ),
      ],
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Icon(icon, color: AppTheme.primaryColor, size: 28),
              const SizedBox(height: 8),
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildFavoriteConnectionsList(
    BuildContext context,
    WidgetRef ref,
    List connections,
  ) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: connections.length,
        itemBuilder: (context, index) {
          final connection = connections[index];
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Card(
              child: InkWell(
                onTap: () => _connectToServer(context, ref, connection),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  width: 160,
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.computer, size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              connection.name,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '${connection.host}:${connection.port}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppTheme.textSecondaryDark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRecentProjectsList(
    BuildContext context,
    WidgetRef ref,
    List projects,
  ) {
    return Column(
      children: projects.map((project) {
        return Card(
          margin: const EdgeInsets.only(bottom: 8),
          child: ListTile(
            leading: const Icon(Icons.folder_outlined),
            title: Text(project.name),
            subtitle: Text(
              project.remotePath,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Text(
              _formatDate(project.lastOpened),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            onTap: () => _openProject(context, ref, project),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildConnectionsList(
    BuildContext context,
    WidgetRef ref,
    List connections,
  ) {
    if (connections.isEmpty) {
      return EmptyState(
        icon: Icons.computer_outlined,
        title: 'No Connections',
        message: 'Add your first SSH connection to get started',
        actionLabel: 'Add Connection',
        onAction: () => context.push('/ssh-connection/edit'),
      );
    }

    return Column(
      children: connections.map((connection) {
        return Card(
          margin: const EdgeInsets.only(bottom: 8),
          child: ListTile(
            leading: const Icon(Icons.computer_outlined),
            title: Text(connection.name),
            subtitle: Text('${connection.username}@${connection.host}:${connection.port}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (connection.isFavorite)
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 8),
                const Icon(Icons.chevron_right),
              ],
            ),
            onTap: () => _connectToServer(context, ref, connection),
            onLongPress: () => _showConnectionOptions(context, ref, connection),
          ),
        );
      }).toList(),
    );
  }

  Future<void> _connectToServer(BuildContext context, WidgetRef ref, connection) async {
    // TODO: Implement connection logic
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Connecting to ${connection.name}...')),
    );
  }

  Future<void> _openProject(BuildContext context, WidgetRef ref, project) async {
    ref.read(currentProjectProvider.notifier).state = project;
    await ref.read(projectsProvider.notifier).updateLastOpened(project.id);
    // TODO: Navigate to project workspace
  }

  void _showConnectionOptions(BuildContext context, WidgetRef ref, connection) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit'),
              onTap: () {
                Navigator.pop(context);
                context.push('/ssh-connection/edit?id=${connection.id}');
              },
            ),
            ListTile(
              leading: Icon(
                connection.isFavorite ? Icons.star_border : Icons.star,
              ),
              title: Text(connection.isFavorite ? 'Remove from Favorites' : 'Add to Favorites'),
              onTap: () {
                Navigator.pop(context);
                ref.read(sshConnectionsProvider.notifier).toggleFavorite(connection.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete, color: AppTheme.errorColor),
              title: const Text('Delete', style: TextStyle(color: AppTheme.errorColor)),
              onTap: () {
                Navigator.pop(context);
                _confirmDelete(context, ref, connection);
              },
            ),
          ],
        ),
      ),
    );
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

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    final now = DateTime.now();
    final diff = now.difference(date);
    
    if (diff.inDays == 0) {
      if (diff.inHours == 0) {
        return '${diff.inMinutes}m ago';
      }
      return '${diff.inHours}h ago';
    } else if (diff.inDays == 1) {
      return 'Yesterday';
    } else if (diff.inDays < 7) {
      return '${diff.inDays}d ago';
    } else {
      return '${date.month}/${date.day}';
    }
  }
}
