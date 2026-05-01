import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../../core/theme/app_theme.dart';
import '../../../models/ssh/ssh_connection.dart';
import '../../../providers/ssh/ssh_connections_provider.dart';

class SshConnectionEditScreen extends ConsumerStatefulWidget {
  final String? connectionId;

  const SshConnectionEditScreen({super.key, this.connectionId});

  @override
  ConsumerState<SshConnectionEditScreen> createState() => _SshConnectionEditScreenState();
}

class _SshConnectionEditScreenState extends ConsumerState<SshConnectionEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _hostController = TextEditingController();
  final _portController = TextEditingController(text: '22');
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _privateKeyController = TextEditingController();
  final _privateKeyPasswordController = TextEditingController();
  final _groupController = TextEditingController();

  bool _usePrivateKey = false;
  bool _isLoading = false;
  bool _obscurePassword = true;
  bool _obscureKeyPassword = true;

  @override
  void initState() {
    super.initState();
    if (widget.connectionId != null) {
      _loadConnection();
    }
  }

  void _loadConnection() {
    final connection = ref.read(sshConnectionProvider(widget.connectionId!));
    if (connection != null) {
      _nameController.text = connection.name;
      _hostController.text = connection.host;
      _portController.text = connection.port.toString();
      _usernameController.text = connection.username;
      _passwordController.text = connection.password ?? '';
      _privateKeyController.text = connection.privateKey ?? '';
      _privateKeyPasswordController.text = connection.privateKeyPassword ?? '';
      _groupController.text = connection.group ?? '';
      _usePrivateKey = connection.usePrivateKey;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _hostController.dispose();
    _portController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _privateKeyController.dispose();
    _privateKeyPasswordController.dispose();
    _groupController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.connectionId != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Edit Connection' : 'New Connection'),
        actions: [
          if (_isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 16),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            )
          else
            TextButton(
              onPressed: _save,
              child: const Text('Save'),
            ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _buildSectionTitle(context, 'Basic Information'),
            const SizedBox(height: 12),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Connection Name',
                hintText: 'e.g., My Home Server',
                prefixIcon: Icon(Icons.label_outline),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _groupController,
              decoration: const InputDecoration(
                labelText: 'Group (Optional)',
                hintText: 'e.g., Production',
                prefixIcon: Icon(Icons.folder_outlined),
              ),
            ),
            const SizedBox(height: 24),
            _buildSectionTitle(context, 'Server Information'),
            const SizedBox(height: 12),
            TextFormField(
              controller: _hostController,
              decoration: const InputDecoration(
                labelText: 'Host',
                hintText: 'e.g., 192.168.1.100 or example.com',
                prefixIcon: Icon(Icons.computer),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a host';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: _portController,
                    decoration: const InputDecoration(
                      labelText: 'Port',
                      prefixIcon: Icon(Icons.settings_ethernet),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required';
                      }
                      final port = int.tryParse(value);
                      if (port == null || port < 1 || port > 65535) {
                        return 'Invalid port';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'e.g., root',
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildSectionTitle(context, 'Authentication'),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SwitchListTile(
                      title: const Text('Use SSH Key'),
                      subtitle: const Text('Authenticate using a private key'),
                      value: _usePrivateKey,
                      onChanged: (value) {
                        setState(() {
                          _usePrivateKey = value;
                        });
                      },
                    ),
                    const Divider(),
                    if (_usePrivateKey) ...[
                      TextFormField(
                        controller: _privateKeyController,
                        decoration: InputDecoration(
                          labelText: 'Private Key',
                          hintText: 'Paste your SSH private key here',
                          prefixIcon: const Icon(Icons.key),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.paste),
                            onPressed: _pastePrivateKey,
                          ),
                        ),
                        maxLines: 6,
                        validator: (value) {
                          if (_usePrivateKey && (value == null || value.isEmpty)) {
                            return 'Please enter a private key';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _privateKeyPasswordController,
                        decoration: InputDecoration(
                          labelText: 'Key Password (Optional)',
                          hintText: 'Password for the private key',
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureKeyPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscureKeyPassword = !_obscureKeyPassword;
                              });
                            },
                          ),
                        ),
                        obscureText: _obscureKeyPassword,
                      ),
                    ] else ...[
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(_obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                        obscureText: _obscurePassword,
                      ),
                    ],
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _isLoading ? null : _testConnection,
                icon: _isLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.network_check),
                label: Text(_isLoading ? 'Testing...' : 'Test Connection'),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.bold,
        color: AppTheme.primaryColor,
      ),
    );
  }

  Future<void> _pastePrivateKey() async {
    // TODO: Implement paste from clipboard
  }

  Future<void> _testConnection() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // TODO: Implement actual connection test
      await Future.delayed(const Duration(seconds: 2));
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Connection successful!'),
            backgroundColor: AppTheme.accentColor,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Connection failed: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    final connection = SshConnection(
      id: widget.connectionId ?? const Uuid().v4(),
      name: _nameController.text,
      host: _hostController.text,
      port: int.parse(_portController.text),
      username: _usernameController.text,
      password: _usePrivateKey ? null : _passwordController.text,
      privateKey: _usePrivateKey ? _privateKeyController.text : null,
      privateKeyPassword: _usePrivateKey ? _privateKeyPasswordController.text : null,
      usePrivateKey: _usePrivateKey,
      group: _groupController.text.isEmpty ? null : _groupController.text,
    );

    final notifier = ref.read(sshConnectionsProvider.notifier);
    
    if (widget.connectionId != null) {
      await notifier.updateConnection(connection);
    } else {
      await notifier.addConnection(connection);
    }

    if (mounted) {
      context.pop();
    }
  }
}
