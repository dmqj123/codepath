import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../models/ai/ai_config.dart';
import '../../../providers/ai/ai_config_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aiConfigs = ref.watch(aiConfigsProvider);
    final defaultConfig = ref.watch(defaultAiConfigProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          _buildSectionHeader(context, 'AI Configuration'),
          ...aiConfigs.map((config) => _buildAiConfigTile(context, ref, config, defaultConfig)),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add AI Configuration'),
            onTap: () => _showAiConfigDialog(context, ref),
          ),
          const Divider(),
          _buildSectionHeader(context, 'Appearance'),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: true, // TODO: Implement theme switching
              onChanged: (value) {
                // TODO: Toggle theme
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.format_size),
            title: const Text('Font Size'),
            subtitle: const Text('Medium'),
            onTap: () {
              // TODO: Show font size picker
            },
          ),
          const Divider(),
          _buildSectionHeader(context, 'Editor'),
          ListTile(
            leading: const Icon(Icons.tab),
            title: const Text('Tab Size'),
            subtitle: const Text('2 spaces'),
            onTap: () {
              // TODO: Show tab size picker
            },
          ),
          ListTile(
            leading: const Icon(Icons.wrap_text),
            title: const Text('Word Wrap'),
            trailing: Switch(
              value: true,
              onChanged: (value) {
                // TODO: Toggle word wrap
              },
            ),
          ),
          const Divider(),
          _buildSectionHeader(context, 'Security'),
          ListTile(
            leading: const Icon(Icons.fingerprint),
            title: const Text('Biometric Authentication'),
            subtitle: const Text('Require authentication to open app'),
            trailing: Switch(
              value: false,
              onChanged: (value) {
                // TODO: Toggle biometric auth
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('Encrypt SSH Keys'),
            trailing: Switch(
              value: true,
              onChanged: (value) {
                // TODO: Toggle encryption
              },
            ),
          ),
          const Divider(),
          _buildSectionHeader(context, 'About'),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Version'),
            subtitle: const Text('1.0.0'),
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Documentation'),
            onTap: () {
              // TODO: Open documentation
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text('Send Feedback'),
            onTap: () {
              // TODO: Open feedback
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: AppTheme.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildAiConfigTile(
    BuildContext context,
    WidgetRef ref,
    AiConfig config,
    AiConfig? defaultConfig,
  ) {
    final isDefault = defaultConfig?.id == config.id;

    return ListTile(
      leading: Icon(
        Icons.smart_toy,
        color: isDefault ? AppTheme.primaryColor : null,
      ),
      title: Text(config.name),
      subtitle: Text('${config.provider.name} - ${config.model}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isDefault)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Default',
                style: TextStyle(
                  color: AppTheme.primaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          const SizedBox(width: 8),
          PopupMenuButton<String>(
            onSelected: (value) async {
              switch (value) {
                case 'edit':
                  _showAiConfigDialog(context, ref, config: config);
                  break;
                case 'default':
                  await ref.read(aiConfigsProvider.notifier).setDefault(config.id);
                  break;
                case 'test':
                  _testConnection(context, ref, config);
                  break;
                case 'delete':
                  _confirmDeleteAiConfig(context, ref, config);
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: [
                    Icon(Icons.edit, size: 20),
                    SizedBox(width: 8),
                    Text('Edit'),
                  ],
                ),
              ),
              if (!isDefault)
                const PopupMenuItem(
                  value: 'default',
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 20),
                      SizedBox(width: 8),
                      Text('Set as Default'),
                    ],
                  ),
                ),
              const PopupMenuItem(
                value: 'test',
                child: Row(
                  children: [
                    Icon(Icons.network_check, size: 20),
                    SizedBox(width: 8),
                    Text('Test Connection'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    Icon(Icons.delete, size: 20, color: AppTheme.errorColor),
                    SizedBox(width: 8),
                    Text('Delete', style: TextStyle(color: AppTheme.errorColor)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showAiConfigDialog(BuildContext context, WidgetRef ref, {AiConfig? config}) {
    final isEditing = config != null;
    final nameController = TextEditingController(text: config?.name ?? '');
    final apiUrlController = TextEditingController(text: config?.apiUrl ?? '');
    final apiKeyController = TextEditingController(text: config?.apiKey ?? '');
    final modelController = TextEditingController(text: config?.model ?? 'gpt-4');
    
    AiProvider selectedProvider = config?.provider ?? AiProvider.openAi;
    double temperature = config?.temperature ?? 0.7;
    int maxTokens = config?.maxTokens ?? 4096;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text(isEditing ? 'Edit AI Configuration' : 'Add AI Configuration'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'e.g., OpenAI GPT-4',
                  ),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<AiProvider>(
                  value: selectedProvider,
                  decoration: const InputDecoration(
                    labelText: 'Provider',
                  ),
                  items: AiProvider.values.map((provider) {
                    return DropdownMenuItem(
                      value: provider,
                      child: Text(provider.name),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        selectedProvider = value;
                      });
                    }
                  },
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: apiUrlController,
                  decoration: const InputDecoration(
                    labelText: 'API URL',
                    hintText: 'https://api.openai.com/v1',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: apiKeyController,
                  decoration: const InputDecoration(
                    labelText: 'API Key',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: modelController,
                  decoration: const InputDecoration(
                    labelText: 'Model',
                    hintText: 'gpt-4',
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Text('Temperature: ${temperature.toStringAsFixed(1)}'),
                    ),
                    Expanded(
                      flex: 2,
                      child: Slider(
                        value: temperature,
                        min: 0,
                        max: 2,
                        divisions: 20,
                        onChanged: (value) {
                          setState(() {
                            temperature = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text('Max Tokens: $maxTokens'),
                    ),
                    Expanded(
                      flex: 2,
                      child: Slider(
                        value: maxTokens.toDouble(),
                        min: 256,
                        max: 8192,
                        divisions: 31,
                        onChanged: (value) {
                          setState(() {
                            maxTokens = value.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                final newConfig = AiConfig(
                  id: config?.id ?? '',
                  name: nameController.text,
                  apiUrl: apiUrlController.text,
                  apiKey: apiKeyController.text,
                  model: modelController.text,
                  temperature: temperature,
                  maxTokens: maxTokens,
                  isDefault: config?.isDefault ?? false,
                  provider: selectedProvider,
                );

                if (isEditing) {
                  await ref.read(aiConfigsProvider.notifier).updateConfig(newConfig);
                } else {
                  await ref.read(aiConfigsProvider.notifier).addConfig(newConfig);
                }

                if (context.mounted) {
                  Navigator.pop(context);
                }
              },
              child: Text(isEditing ? 'Update' : 'Add'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _testConnection(BuildContext context, WidgetRef ref, AiConfig config) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 16),
            Text('Testing connection...'),
          ],
        ),
      ),
    );

    try {
      await ref.read(aiConfigsProvider.notifier).testConnection(config);
      
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Connection successful!'),
            backgroundColor: AppTheme.accentColor,
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Connection failed: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    }
  }

  void _confirmDeleteAiConfig(BuildContext context, WidgetRef ref, AiConfig config) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Configuration'),
        content: Text('Are you sure you want to delete "${config.name}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              await ref.read(aiConfigsProvider.notifier).deleteConfig(config.id);
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.errorColor),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
