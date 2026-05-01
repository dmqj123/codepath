import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';

class EditorScreen extends ConsumerStatefulWidget {
  final String? filePath;

  const EditorScreen({super.key, this.filePath});

  @override
  ConsumerState<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends ConsumerState<EditorScreen> {
  final _codeController = TextEditingController();
  bool _isLoading = false;
  bool _isModified = false;
  String _fileName = 'Untitled';

  @override
  void initState() {
    super.initState();
    if (widget.filePath != null) {
      _fileName = widget.filePath!.split('/').last;
      _loadFile();
    }
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _loadFile() async {
    if (widget.filePath == null) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // TODO: Load file content via SSH
      await Future.delayed(const Duration(seconds: 1));
      
      setState(() {
        _codeController.text = '// File content would be loaded here\n// from: ${widget.filePath}';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load file: $e')),
        );
      }
    }
  }

  Future<void> _saveFile() async {
    if (widget.filePath == null) return;

    setState(() {
      _isLoading = true;
    });

    try {
      // TODO: Save file content via SSH
      await Future.delayed(const Duration(milliseconds: 500));
      
      setState(() {
        _isModified = false;
        _isLoading = false;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('File saved')),
        );
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save file: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_fileName),
            if (_isModified)
              Text(
                'Modified',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppTheme.warningColor,
                ),
              ),
          ],
        ),
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
          else ...[
            IconButton(
              icon: const Icon(Icons.undo),
              onPressed: () {
                // TODO: Undo
              },
            ),
            IconButton(
              icon: const Icon(Icons.redo),
              onPressed: () {
                // TODO: Redo
              },
            ),
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: _isModified ? _saveFile : null,
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                switch (value) {
                  case 'find':
                    // TODO: Find and replace
                    break;
                  case 'format':
                    // TODO: Format code
                    break;
                  case 'git':
                    // TODO: Show git diff
                    break;
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'find',
                  child: Row(
                    children: [
                      Icon(Icons.search, size: 20),
                      SizedBox(width: 8),
                      Text('Find & Replace'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'format',
                  child: Row(
                    children: [
                      Icon(Icons.format_align_left, size: 20),
                      SizedBox(width: 8),
                      Text('Format Code'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'git',
                  child: Row(
                    children: [
                      Icon(Icons.source, size: 20),
                      SizedBox(width: 8),
                      Text('Git Diff'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
      body: _isLoading && _codeController.text.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: Container(
                    color: AppTheme.darkBackground,
                    child: TextField(
                      controller: _codeController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16),
                      ),
                      style: const TextStyle(
                        fontFamily: 'JetBrainsMono',
                        fontSize: 14,
                        height: 1.5,
                      ),
                      maxLines: null,
                      expands: true,
                      onChanged: (_) {
                        setState(() {
                          _isModified = true;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppTheme.darkSurface,
                    border: Border(
                      top: BorderSide(color: AppTheme.darkCard),
                    ),
                  ),
                  child: SafeArea(
                    child: Row(
                      children: [
                        Text(
                          'UTF-8',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Dart',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Spacer(),
                        Text(
                          'Ln 1, Col 1',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
