import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@HiveType(typeId: 5)
@freezed
class Project with _$Project {
  const factory Project({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String remotePath,
    @HiveField(3) required String sshConnectionId,
    @HiveField(4) String? description,
    @HiveField(5) @Default([]) List<String> tags,
    @HiveField(6) DateTime? lastOpened,
    @HiveField(7) @Default(false) bool isFavorite,
    @HiveField(8) String? language,
    @HiveField(9) @Default({}) Map<String, dynamic> settings,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}

@freezed
class ProjectSession with _$ProjectSession {
  const factory ProjectSession({
    required String projectId,
    required String sshConnectionId,
    required String currentPath,
    List<OpenFile>? openFiles,
    String? activeFileId,
    DateTime? startedAt,
  }) = _ProjectSession;

  factory ProjectSession.fromJson(Map<String, dynamic> json) =>
      _$ProjectSessionFromJson(json);
}

@freezed
class OpenFile with _$OpenFile {
  const factory OpenFile({
    required String id,
    required String path,
    required String name,
    String? content,
    @Default(false) bool isModified,
    int? cursorPosition,
  }) = _OpenFile;

  factory OpenFile.fromJson(Map<String, dynamic> json) =>
      _$OpenFileFromJson(json);
}
