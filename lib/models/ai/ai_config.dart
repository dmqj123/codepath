import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'ai_config.freezed.dart';
part 'ai_config.g.dart';

@HiveType(typeId: 3)
@freezed
class AiConfig with _$AiConfig {
  const factory AiConfig({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String apiUrl,
    @HiveField(3) required String apiKey,
    @HiveField(4) @Default('gpt-4') String model,
    @HiveField(5) @Default(0.7) double temperature,
    @HiveField(6) @Default(4096) int maxTokens,
    @HiveField(7) @Default(false) bool isDefault,
    @HiveField(8) @Default(AiProvider.openAi) AiProvider provider,
  }) = _AiConfig;

  factory AiConfig.fromJson(Map<String, dynamic> json) =>
      _$AiConfigFromJson(json);
}

@HiveType(typeId: 4)
enum AiProvider {
  @HiveField(0)
  openAi,
  @HiveField(1)
  claude,
  @HiveField(2)
  custom,
  @HiveField(3)
  ollama,
}

@freezed
class AiMessage with _$AiMessage {
  const factory AiMessage({
    required String id,
    required String role,
    required String content,
    DateTime? timestamp,
    List<AiToolCall>? toolCalls,
    Map<String, dynamic>? metadata,
  }) = _AiMessage;

  factory AiMessage.fromJson(Map<String, dynamic> json) =>
      _$AiMessageFromJson(json);
}

@freezed
class AiToolCall with _$AiToolCall {
  const factory AiToolCall({
    required String id,
    required String type,
    required Map<String, dynamic> function,
    String? result,
  }) = _AiToolCall;

  factory AiToolCall.fromJson(Map<String, dynamic> json) =>
      _$AiToolCallFromJson(json);
}

@freezed
class AiConversation with _$AiConversation {
  const factory AiConversation({
    required String id,
    required String title,
    required String projectId,
    required List<AiMessage> messages,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AiConversation;

  factory AiConversation.fromJson(Map<String, dynamic> json) =>
      _$AiConversationFromJson(json);
}
