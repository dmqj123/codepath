// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_config.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AiConfigAdapter extends TypeAdapter<AiConfig> {
  @override
  final int typeId = 3;

  @override
  AiConfig read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AiConfig(
      id: fields[0] as String,
      name: fields[1] as String,
      apiUrl: fields[2] as String,
      apiKey: fields[3] as String,
      model: fields[4] as String,
      temperature: fields[5] as double,
      maxTokens: fields[6] as int,
      isDefault: fields[7] as bool,
      provider: fields[8] as AiProvider,
    );
  }

  @override
  void write(BinaryWriter writer, AiConfig obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.apiUrl)
      ..writeByte(3)
      ..write(obj.apiKey)
      ..writeByte(4)
      ..write(obj.model)
      ..writeByte(5)
      ..write(obj.temperature)
      ..writeByte(6)
      ..write(obj.maxTokens)
      ..writeByte(7)
      ..write(obj.isDefault)
      ..writeByte(8)
      ..write(obj.provider);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AiConfigAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AiProviderAdapter extends TypeAdapter<AiProvider> {
  @override
  final int typeId = 4;

  @override
  AiProvider read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AiProvider.openAi;
      case 1:
        return AiProvider.claude;
      case 2:
        return AiProvider.custom;
      case 3:
        return AiProvider.ollama;
      default:
        return AiProvider.openAi;
    }
  }

  @override
  void write(BinaryWriter writer, AiProvider obj) {
    switch (obj) {
      case AiProvider.openAi:
        writer.writeByte(0);
        break;
      case AiProvider.claude:
        writer.writeByte(1);
        break;
      case AiProvider.custom:
        writer.writeByte(2);
        break;
      case AiProvider.ollama:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AiProviderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiConfigImpl _$$AiConfigImplFromJson(Map<String, dynamic> json) =>
    _$AiConfigImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      apiUrl: json['apiUrl'] as String,
      apiKey: json['apiKey'] as String,
      model: json['model'] as String? ?? 'gpt-4',
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
      maxTokens: (json['maxTokens'] as num?)?.toInt() ?? 4096,
      isDefault: json['isDefault'] as bool? ?? false,
      provider: $enumDecodeNullable(_$AiProviderEnumMap, json['provider']) ??
          AiProvider.openAi,
    );

Map<String, dynamic> _$$AiConfigImplToJson(_$AiConfigImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'apiUrl': instance.apiUrl,
      'apiKey': instance.apiKey,
      'model': instance.model,
      'temperature': instance.temperature,
      'maxTokens': instance.maxTokens,
      'isDefault': instance.isDefault,
      'provider': _$AiProviderEnumMap[instance.provider]!,
    };

const _$AiProviderEnumMap = {
  AiProvider.openAi: 'openAi',
  AiProvider.claude: 'claude',
  AiProvider.custom: 'custom',
  AiProvider.ollama: 'ollama',
};

_$AiMessageImpl _$$AiMessageImplFromJson(Map<String, dynamic> json) =>
    _$AiMessageImpl(
      id: json['id'] as String,
      role: json['role'] as String,
      content: json['content'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      toolCalls: (json['toolCalls'] as List<dynamic>?)
          ?.map((e) => AiToolCall.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AiMessageImplToJson(_$AiMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'content': instance.content,
      'timestamp': instance.timestamp?.toIso8601String(),
      'toolCalls': instance.toolCalls,
      'metadata': instance.metadata,
    };

_$AiToolCallImpl _$$AiToolCallImplFromJson(Map<String, dynamic> json) =>
    _$AiToolCallImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      function: json['function'] as Map<String, dynamic>,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$AiToolCallImplToJson(_$AiToolCallImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'function': instance.function,
      'result': instance.result,
    };

_$AiConversationImpl _$$AiConversationImplFromJson(Map<String, dynamic> json) =>
    _$AiConversationImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      projectId: json['projectId'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => AiMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AiConversationImplToJson(
        _$AiConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'projectId': instance.projectId,
      'messages': instance.messages,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
