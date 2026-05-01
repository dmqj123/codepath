// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProjectAdapter extends TypeAdapter<Project> {
  @override
  final int typeId = 5;

  @override
  Project read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Project(
      id: fields[0] as String,
      name: fields[1] as String,
      remotePath: fields[2] as String,
      sshConnectionId: fields[3] as String,
      description: fields[4] as String?,
      tags: (fields[5] as List).cast<String>(),
      lastOpened: fields[6] as DateTime?,
      isFavorite: fields[7] as bool,
      language: fields[8] as String?,
      settings: (fields[9] as Map).cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, Project obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.remotePath)
      ..writeByte(3)
      ..write(obj.sshConnectionId)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.tags)
      ..writeByte(6)
      ..write(obj.lastOpened)
      ..writeByte(7)
      ..write(obj.isFavorite)
      ..writeByte(8)
      ..write(obj.language)
      ..writeByte(9)
      ..write(obj.settings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      remotePath: json['remotePath'] as String,
      sshConnectionId: json['sshConnectionId'] as String,
      description: json['description'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      lastOpened: json['lastOpened'] == null
          ? null
          : DateTime.parse(json['lastOpened'] as String),
      isFavorite: json['isFavorite'] as bool? ?? false,
      language: json['language'] as String?,
      settings: json['settings'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'remotePath': instance.remotePath,
      'sshConnectionId': instance.sshConnectionId,
      'description': instance.description,
      'tags': instance.tags,
      'lastOpened': instance.lastOpened?.toIso8601String(),
      'isFavorite': instance.isFavorite,
      'language': instance.language,
      'settings': instance.settings,
    };

_$ProjectSessionImpl _$$ProjectSessionImplFromJson(Map<String, dynamic> json) =>
    _$ProjectSessionImpl(
      projectId: json['projectId'] as String,
      sshConnectionId: json['sshConnectionId'] as String,
      currentPath: json['currentPath'] as String,
      openFiles: (json['openFiles'] as List<dynamic>?)
          ?.map((e) => OpenFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      activeFileId: json['activeFileId'] as String?,
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$$ProjectSessionImplToJson(
        _$ProjectSessionImpl instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'sshConnectionId': instance.sshConnectionId,
      'currentPath': instance.currentPath,
      'openFiles': instance.openFiles,
      'activeFileId': instance.activeFileId,
      'startedAt': instance.startedAt?.toIso8601String(),
    };

_$OpenFileImpl _$$OpenFileImplFromJson(Map<String, dynamic> json) =>
    _$OpenFileImpl(
      id: json['id'] as String,
      path: json['path'] as String,
      name: json['name'] as String,
      content: json['content'] as String?,
      isModified: json['isModified'] as bool? ?? false,
      cursorPosition: (json['cursorPosition'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OpenFileImplToJson(_$OpenFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'name': instance.name,
      'content': instance.content,
      'isModified': instance.isModified,
      'cursorPosition': instance.cursorPosition,
    };
