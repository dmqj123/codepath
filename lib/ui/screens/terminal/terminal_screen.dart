import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';

class TerminalScreen extends ConsumerStatefulWidget {
  const TerminalScreen({super.key});

  @override
  ConsumerState<TerminalScreen> createState() => _TerminalScreenState();
}

class _TerminalScreenState extends ConsumerState<TerminalScreen> {
  final _commandController = TextEditingController();
  final List<TerminalLine> _lines = [];
  bool _isConnected = false;
  String _currentPath = '~';

  @override
  void initState() {
    super.initState();
    _addWelcomeMessage();
  }

  void _addWelcomeMessage() {
    _lines.add(const TerminalLine(
      text: 'AI Coder Terminal',
      type: TerminalLineType.system,
    ));
    _lines.add(const TerminalLine(
      text: 'Not connected to any server.',
      type: TerminalLineType.error,
    ));
    _lines.add(const TerminalLine(
      text: '',
      type: TerminalLineType.output,
    ));
  }

  @override
  void dispose() {
    _commandController.dispose();
    super.dispose();
  }

  void _executeCommand() {
    final command = _commandController.text.trim();
    if (command.isEmpty) return;

    setState(() {
      _lines.add(TerminalLine(
        text: '$_currentPath\$ $command',
        type: TerminalLineType.input,
      ));
    });

    _commandController.clear();

    // TODO: Execute command via SSH
    setState(() {
      _lines.add(const TerminalLine(
        text: 'Command execution not implemented yet.',
        type: TerminalLineType.error,
      ));
      _lines.add(const TerminalLine(
        text: '',
        type: TerminalLineType.output,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terminal'),
        actions: [
          if (_isConnected)
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppTheme.accentColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppTheme.accentColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'Connected',
                    style: TextStyle(
                      color: AppTheme.accentColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          else
            Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppTheme.errorColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppTheme.errorColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Text(
                    'Disconnected',
                    style: TextStyle(
                      color: AppTheme.errorColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'clear':
                  setState(() {
                    _lines.clear();
                  });
                  break;
                case 'connect':
                  // TODO: Show connection dialog
                  break;
                case 'disconnect':
                  // TODO: Disconnect
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'clear',
                child: Row(
                  children: [
                    Icon(Icons.clear_all, size: 20),
                    SizedBox(width: 8),
                    Text('Clear'),
                  ],
                ),
              ),
              if (!_isConnected)
                const PopupMenuItem(
                  value: 'connect',
                  child: Row(
                    children: [
                      Icon(Icons.connect_without_contact, size: 20),
                      SizedBox(width: 8),
                      Text('Connect'),
                    ],
                  ),
                )
              else
                PopupMenuItem(
                  value: 'disconnect',
                  child: Row(
                    children: [
                      Icon(Icons.link_off, size: 20, color: Colors.red[400]),
                      const SizedBox(width: 8),
                      Text('Disconnect', style: TextStyle(color: Colors.red[400])),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: AppTheme.darkBackground,
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                reverse: false,
                itemCount: _lines.length,
                itemBuilder: (context, index) {
                  final line = _lines[index];
                  return _buildTerminalLine(line);
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppTheme.darkSurface,
              border: Border(
                top: BorderSide(color: AppTheme.darkCard),
              ),
            ),
            child: SafeArea(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      _currentPath,
                      style: const TextStyle(
                        color: AppTheme.primaryColor,
                        fontFamily: 'JetBrainsMono',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _commandController,
                      decoration: const InputDecoration(
                        hintText: 'Enter command...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                      style: const TextStyle(
                        fontFamily: 'JetBrainsMono',
                        fontSize: 14,
                      ),
                      onSubmitted: (_) => _executeCommand(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: _executeCommand,
                    color: AppTheme.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTerminalLine(TerminalLine line) {
    Color textColor;
    
    switch (line.type) {
      case TerminalLineType.input:
        textColor = AppTheme.primaryColor;
        break;
      case TerminalLineType.output:
        textColor = AppTheme.textPrimaryDark;
        break;
      case TerminalLineType.error:
        textColor = AppTheme.errorColor;
        break;
      case TerminalLineType.system:
        textColor = AppTheme.accentColor;
        break;
    }

    return SelectableText(
      line.text,
      style: TextStyle(
        color: textColor,
        fontFamily: 'JetBrainsMono',
        fontSize: 13,
        height: 1.4,
      ),
    );
  }
}

enum TerminalLineType {
  input,
  output,
  error,
  system,
}

class TerminalLine {
  final String text;
  final TerminalLineType type;

  const TerminalLine({
    required this.text,
    required this.type,
  });
}
