import 'package:hive_flutter/hive_flutter.dart';

import '../../core/constants/app_constants.dart';
import '../../models/ssh/ssh_connection.dart';
import '../../models/ai/ai_config.dart';
import '../../models/project/project.dart';

class HiveService {
  static final HiveService _instance = HiveService._internal();
  factory HiveService() => _instance;
  HiveService._internal();

  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;

    await Hive.initFlutter();

    Hive.registerAdapter(SshConnectionAdapter());
    Hive.registerAdapter(ConnectionStatusAdapter());
    Hive.registerAdapter(AiConfigAdapter());
    Hive.registerAdapter(AiProviderAdapter());
    Hive.registerAdapter(ProjectAdapter());

    await Hive.openBox<SshConnection>(AppConstants.sshConnectionsBox);
    await Hive.openBox<Project>(AppConstants.projectsBox);
    await Hive.openBox<AiConfig>(AppConstants.aiConfigsBox);
    await Hive.openBox<dynamic>(AppConstants.settingsBox);

    _initialized = true;
  }

  Box<SshConnection> get sshConnectionsBox =>
      Hive.box<SshConnection>(AppConstants.sshConnectionsBox);

  Box<Project> get projectsBox =>
      Hive.box<Project>(AppConstants.projectsBox);

  Box<AiConfig> get aiConfigsBox =>
      Hive.box<AiConfig>(AppConstants.aiConfigsBox);

  Box<dynamic> get settingsBox =>
      Hive.box<dynamic>(AppConstants.settingsBox);

  Future<void> saveSshConnection(SshConnection connection) async {
    await sshConnectionsBox.put(connection.id, connection);
  }

  Future<void> deleteSshConnection(String id) async {
    await sshConnectionsBox.delete(id);
  }

  List<SshConnection> getAllSshConnections() {
    return sshConnectionsBox.values.toList();
  }

  SshConnection? getSshConnection(String id) {
    return sshConnectionsBox.get(id);
  }

  Future<void> saveProject(Project project) async {
    await projectsBox.put(project.id, project);
  }

  Future<void> deleteProject(String id) async {
    await projectsBox.delete(id);
  }

  List<Project> getAllProjects() {
    return projectsBox.values.toList();
  }

  Project? getProject(String id) {
    return projectsBox.get(id);
  }

  Future<void> saveAiConfig(AiConfig config) async {
    await aiConfigsBox.put(config.id, config);
  }

  Future<void> deleteAiConfig(String id) async {
    await aiConfigsBox.delete(id);
  }

  List<AiConfig> getAllAiConfigs() {
    return aiConfigsBox.values.toList();
  }

  AiConfig? getAiConfig(String id) {
    return aiConfigsBox.get(id);
  }

  AiConfig? getDefaultAiConfig() {
    final configs = aiConfigsBox.values.where((c) => c.isDefault).toList();
    if (configs.isNotEmpty) return configs.first;
    return aiConfigsBox.isNotEmpty ? aiConfigsBox.values.first : null;
  }

  Future<void> setSetting(String key, dynamic value) async {
    await settingsBox.put(key, value);
  }

  T? getSetting<T>(String key, {T? defaultValue}) {
    final value = settingsBox.get(key);
    return value != null ? value as T : defaultValue;
  }

  Future<void> deleteSetting(String key) async {
    await settingsBox.delete(key);
  }

  Future<void> clearAll() async {
    await sshConnectionsBox.clear();
    await projectsBox.clear();
    await aiConfigsBox.clear();
    await settingsBox.clear();
  }
}

final hiveService = HiveService();
