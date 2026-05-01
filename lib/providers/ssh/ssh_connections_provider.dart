import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../models/ssh/ssh_connection.dart';
import '../../data/local/hive_service.dart';

final sshConnectionsProvider = StateNotifierProvider<SshConnectionsNotifier, List<SshConnection>>((ref) {
  return SshConnectionsNotifier();
});

final sshConnectionProvider = Provider.family<SshConnection?, String>((ref, id) {
  final connections = ref.watch(sshConnectionsProvider);
  try {
    return connections.firstWhere((c) => c.id == id);
  } catch (e) {
    return null;
  }
});

class SshConnectionsNotifier extends StateNotifier<List<SshConnection>> {
  SshConnectionsNotifier() : super([]) {
    _loadConnections();
  }

  final _uuid = const Uuid();

  void _loadConnections() {
    state = hiveService.getAllSshConnections();
  }

  Future<void> addConnection(SshConnection connection) async {
    final newConnection = connection.copyWith(
      id: connection.id.isEmpty ? _uuid.v4() : connection.id,
    );
    await hiveService.saveSshConnection(newConnection);
    state = [...state, newConnection];
  }

  Future<void> updateConnection(SshConnection connection) async {
    await hiveService.saveSshConnection(connection);
    state = state.map((c) => c.id == connection.id ? connection : c).toList();
  }

  Future<void> deleteConnection(String id) async {
    await hiveService.deleteSshConnection(id);
    state = state.where((c) => c.id != id).toList();
  }

  Future<void> toggleFavorite(String id) async {
    final connection = state.firstWhere((c) => c.id == id);
    final updated = connection.copyWith(isFavorite: !connection.isFavorite);
    await hiveService.saveSshConnection(updated);
    state = state.map((c) => c.id == id ? updated : c).toList();
  }

  Future<void> updateLastConnected(String id) async {
    final connection = state.firstWhere((c) => c.id == id);
    final updated = connection.copyWith(lastConnected: DateTime.now());
    await hiveService.saveSshConnection(updated);
    state = state.map((c) => c.id == id ? updated : c).toList();
  }

  List<SshConnection> getFavoriteConnections() {
    return state.where((c) => c.isFavorite).toList();
  }

  List<SshConnection> getRecentConnections({int limit = 5}) {
    final sorted = state.where((c) => c.lastConnected != null).toList()
      ..sort((a, b) => b.lastConnected!.compareTo(a.lastConnected!));
    return sorted.take(limit).toList();
  }
}
