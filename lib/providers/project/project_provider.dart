import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../models/project/project.dart';
import '../../data/local/hive_service.dart';

final projectsProvider = StateNotifierProvider<ProjectsNotifier, List<Project>>((ref) {
  return ProjectsNotifier();
});

final currentProjectProvider = StateProvider<Project?>((ref) => null);

final projectProvider = Provider.family<Project?, String>((ref, id) {
  final projects = ref.watch(projectsProvider);
  try {
    return projects.firstWhere((p) => p.id == id);
  } catch (e) {
    return null;
  }
});

class ProjectsNotifier extends StateNotifier<List<Project>> {
  ProjectsNotifier() : super([]) {
    _loadProjects();
  }

  final _uuid = const Uuid();

  void _loadProjects() {
    state = hiveService.getAllProjects();
  }

  Future<void> addProject(Project project) async {
    final newProject = project.copyWith(
      id: project.id.isEmpty ? _uuid.v4() : project.id,
    );
    await hiveService.saveProject(newProject);
    state = [...state, newProject];
  }

  Future<void> updateProject(Project project) async {
    await hiveService.saveProject(project);
    state = state.map((p) => p.id == project.id ? project : p).toList();
  }

  Future<void> deleteProject(String id) async {
    await hiveService.deleteProject(id);
    state = state.where((p) => p.id != id).toList();
  }

  Future<void> toggleFavorite(String id) async {
    final project = state.firstWhere((p) => p.id == id);
    final updated = project.copyWith(isFavorite: !project.isFavorite);
    await hiveService.saveProject(updated);
    state = state.map((p) => p.id == id ? updated : p).toList();
  }

  Future<void> updateLastOpened(String id) async {
    final project = state.firstWhere((p) => p.id == id);
    final updated = project.copyWith(lastOpened: DateTime.now());
    await hiveService.saveProject(updated);
    state = state.map((p) => p.id == id ? updated : p).toList();
  }

  List<Project> getFavoriteProjects() {
    return state.where((p) => p.isFavorite).toList();
  }

  List<Project> getRecentProjects({int limit = 5}) {
    final sorted = state.where((p) => p.lastOpened != null).toList()
      ..sort((a, b) => b.lastOpened!.compareTo(a.lastOpened!));
    return sorted.take(limit).toList();
  }

  List<Project> getProjectsByConnection(String sshConnectionId) {
    return state.where((p) => p.sshConnectionId == sshConnectionId).toList();
  }
}

final openFilesProvider = StateNotifierProvider<OpenFilesNotifier, List<OpenFile>>((ref) {
  return OpenFilesNotifier();
});

class OpenFilesNotifier extends StateNotifier<List<OpenFile>> {
  OpenFilesNotifier() : super([]);

  void openFile(OpenFile file) {
    final exists = state.any((f) => f.id == file.id);
    if (!exists) {
      state = [...state, file];
    }
  }

  void closeFile(String fileId) {
    state = state.where((f) => f.id != fileId).toList();
  }

  void updateFileContent(String fileId, String content) {
    state = state.map((f) {
      if (f.id == fileId) {
        return f.copyWith(
          content: content,
          isModified: f.content != content,
        );
      }
      return f;
    }).toList();
  }

  void markAsSaved(String fileId) {
    state = state.map((f) {
      if (f.id == fileId) {
        return f.copyWith(isModified: false);
      }
      return f;
    }).toList();
  }

  void closeAll() {
    state = [];
  }
}

final activeFileIdProvider = StateProvider<String?>((ref) => null);
