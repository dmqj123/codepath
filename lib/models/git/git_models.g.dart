// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitStatusImpl _$$GitStatusImplFromJson(Map<String, dynamic> json) =>
    _$GitStatusImpl(
      branch: json['branch'] as String,
      modified: (json['modified'] as List<dynamic>)
          .map((e) => GitFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      staged: (json['staged'] as List<dynamic>)
          .map((e) => GitFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      untracked: (json['untracked'] as List<dynamic>)
          .map((e) => GitFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      conflicted: (json['conflicted'] as List<dynamic>)
          .map((e) => GitFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      ahead: (json['ahead'] as num).toInt(),
      behind: (json['behind'] as num).toInt(),
    );

Map<String, dynamic> _$$GitStatusImplToJson(_$GitStatusImpl instance) =>
    <String, dynamic>{
      'branch': instance.branch,
      'modified': instance.modified,
      'staged': instance.staged,
      'untracked': instance.untracked,
      'conflicted': instance.conflicted,
      'ahead': instance.ahead,
      'behind': instance.behind,
    };

_$GitFileImpl _$$GitFileImplFromJson(Map<String, dynamic> json) =>
    _$GitFileImpl(
      path: json['path'] as String,
      status: $enumDecode(_$GitFileStatusEnumMap, json['status']),
      diff: json['diff'] as String?,
    );

Map<String, dynamic> _$$GitFileImplToJson(_$GitFileImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'status': _$GitFileStatusEnumMap[instance.status]!,
      'diff': instance.diff,
    };

const _$GitFileStatusEnumMap = {
  GitFileStatus.modified: 'modified',
  GitFileStatus.added: 'added',
  GitFileStatus.deleted: 'deleted',
  GitFileStatus.renamed: 'renamed',
  GitFileStatus.untracked: 'untracked',
  GitFileStatus.conflicted: 'conflicted',
};

_$GitCommitImpl _$$GitCommitImplFromJson(Map<String, dynamic> json) =>
    _$GitCommitImpl(
      hash: json['hash'] as String,
      shortHash: json['shortHash'] as String,
      message: json['message'] as String,
      author: json['author'] as String,
      date: DateTime.parse(json['date'] as String),
      parents:
          (json['parents'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GitCommitImplToJson(_$GitCommitImpl instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'shortHash': instance.shortHash,
      'message': instance.message,
      'author': instance.author,
      'date': instance.date.toIso8601String(),
      'parents': instance.parents,
    };

_$GitBranchImpl _$$GitBranchImplFromJson(Map<String, dynamic> json) =>
    _$GitBranchImpl(
      name: json['name'] as String,
      isCurrent: json['isCurrent'] as bool,
      remote: json['remote'] as String?,
      isLocal: json['isLocal'] as bool,
    );

Map<String, dynamic> _$$GitBranchImplToJson(_$GitBranchImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isCurrent': instance.isCurrent,
      'remote': instance.remote,
      'isLocal': instance.isLocal,
    };

_$GitDiffImpl _$$GitDiffImplFromJson(Map<String, dynamic> json) =>
    _$GitDiffImpl(
      oldPath: json['oldPath'] as String,
      newPath: json['newPath'] as String,
      hunks: (json['hunks'] as List<dynamic>)
          .map((e) => DiffHunk.fromJson(e as Map<String, dynamic>))
          .toList(),
      isNewFile: json['isNewFile'] as bool,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$GitDiffImplToJson(_$GitDiffImpl instance) =>
    <String, dynamic>{
      'oldPath': instance.oldPath,
      'newPath': instance.newPath,
      'hunks': instance.hunks,
      'isNewFile': instance.isNewFile,
      'isDeleted': instance.isDeleted,
    };

_$DiffHunkImpl _$$DiffHunkImplFromJson(Map<String, dynamic> json) =>
    _$DiffHunkImpl(
      oldStart: (json['oldStart'] as num).toInt(),
      oldLines: (json['oldLines'] as num).toInt(),
      newStart: (json['newStart'] as num).toInt(),
      newLines: (json['newLines'] as num).toInt(),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => DiffLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DiffHunkImplToJson(_$DiffHunkImpl instance) =>
    <String, dynamic>{
      'oldStart': instance.oldStart,
      'oldLines': instance.oldLines,
      'newStart': instance.newStart,
      'newLines': instance.newLines,
      'lines': instance.lines,
    };

_$DiffLineImpl _$$DiffLineImplFromJson(Map<String, dynamic> json) =>
    _$DiffLineImpl(
      type: $enumDecode(_$DiffLineTypeEnumMap, json['type']),
      content: json['content'] as String,
      oldLineNumber: (json['oldLineNumber'] as num?)?.toInt(),
      newLineNumber: (json['newLineNumber'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DiffLineImplToJson(_$DiffLineImpl instance) =>
    <String, dynamic>{
      'type': _$DiffLineTypeEnumMap[instance.type]!,
      'content': instance.content,
      'oldLineNumber': instance.oldLineNumber,
      'newLineNumber': instance.newLineNumber,
    };

const _$DiffLineTypeEnumMap = {
  DiffLineType.context: 'context',
  DiffLineType.added: 'added',
  DiffLineType.removed: 'removed',
};
