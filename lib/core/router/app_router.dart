import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../ui/screens/home/home_screen.dart';
import '../../ui/screens/ssh/ssh_connections_screen.dart';
import '../../ui/screens/ssh/ssh_connection_edit_screen.dart';
import '../../ui/screens/editor/editor_screen.dart';
import '../../ui/screens/terminal/terminal_screen.dart';
import '../../ui/screens/settings/settings_screen.dart';
import '../../ui/screens/ai_chat/ai_chat_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/ssh-connections',
        name: 'sshConnections',
        builder: (context, state) => const SshConnectionsScreen(),
      ),
      GoRoute(
        path: '/ssh-connection/edit',
        name: 'sshConnectionEdit',
        builder: (context, state) {
          final connectionId = state.uri.queryParameters['id'];
          return SshConnectionEditScreen(connectionId: connectionId);
        },
      ),
      GoRoute(
        path: '/editor',
        name: 'editor',
        builder: (context, state) {
          final filePath = state.uri.queryParameters['path'];
          return EditorScreen(filePath: filePath);
        },
      ),
      GoRoute(
        path: '/terminal',
        name: 'terminal',
        builder: (context, state) => const TerminalScreen(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/ai-chat',
        name: 'aiChat',
        builder: (context, state) {
          final conversationId = state.uri.queryParameters['conversationId'];
          return AiChatScreen(conversationId: conversationId);
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found: ${state.uri.path}'),
      ),
    ),
  );
});
