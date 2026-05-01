import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../models/ai/ai_config.dart';
import '../../data/local/hive_service.dart';
import '../../services/ai/ai_service.dart';

final aiConfigsProvider = StateNotifierProvider<AiConfigsNotifier, List<AiConfig>>((ref) {
  return AiConfigsNotifier(ref);
});

final defaultAiConfigProvider = Provider<AiConfig?>((ref) {
  final configs = ref.watch(aiConfigsProvider);
  final defaults = configs.where((c) => c.isDefault).toList();
  if (defaults.isNotEmpty) return defaults.first;
  return configs.isNotEmpty ? configs.first : null;
});

final aiServiceConfiguredProvider = Provider<bool>((ref) {
  final config = ref.watch(defaultAiConfigProvider);
  return config != null;
});

class AiConfigsNotifier extends StateNotifier<List<AiConfig>> {
  AiConfigsNotifier(this._ref) : super([]) {
    _loadConfigs();
  }

  final Ref _ref;
  final _uuid = const Uuid();

  void _loadConfigs() {
    state = hiveService.getAllAiConfigs();
    _updateServiceConfig();
  }

  void _updateServiceConfig() {
    AiConfig? defaultConfig;
    try {
      defaultConfig = state.firstWhere((c) => c.isDefault);
    } catch (e) {
      if (state.isNotEmpty) {
        defaultConfig = state.first;
      }
    }
    
    if (defaultConfig != null) {
      _ref.read(aiServiceProvider).setConfig(defaultConfig);
    }
  }

  Future<void> addConfig(AiConfig config) async {
    final newConfig = config.copyWith(
      id: config.id.isEmpty ? _uuid.v4() : config.id,
    );

    if (newConfig.isDefault) {
      await _clearDefaultFlag();
    }

    await hiveService.saveAiConfig(newConfig);
    state = [...state, newConfig];
    _updateServiceConfig();
  }

  Future<void> updateConfig(AiConfig config) async {
    if (config.isDefault) {
      await _clearDefaultFlag(exceptId: config.id);
    }

    await hiveService.saveAiConfig(config);
    state = state.map((c) => c.id == config.id ? config : c).toList();
    _updateServiceConfig();
  }

  Future<void> deleteConfig(String id) async {
    await hiveService.deleteAiConfig(id);
    state = state.where((c) => c.id != id).toList();
    _updateServiceConfig();
  }

  Future<void> setDefault(String id) async {
    await _clearDefaultFlag();
    
    final config = state.firstWhere((c) => c.id == id);
    final updated = config.copyWith(isDefault: true);
    await hiveService.saveAiConfig(updated);
    
    state = state.map((c) => 
      c.id == id ? updated : c.copyWith(isDefault: false)
    ).toList();
    
    _updateServiceConfig();
  }

  Future<void> _clearDefaultFlag({String? exceptId}) async {
    for (final config in state) {
      if (config.isDefault && config.id != exceptId) {
        final updated = config.copyWith(isDefault: false);
        await hiveService.saveAiConfig(updated);
      }
    }
  }

  Future<void> testConnection(AiConfig config) async {
    final tempService = AiService();
    tempService.setConfig(config);
    
    try {
      await tempService.sendMessage([
        const AiMessage(
          id: 'test',
          role: 'user',
          content: 'Hello',
        ),
      ]);
    } finally {
      tempService.dispose();
    }
  }
}
