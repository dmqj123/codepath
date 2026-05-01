import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_models.freezed.dart';
part 'git_models.g.dart';

@freezed
class GitStatus with _$GitStatus {
  const factory GitStatus({
    required String branch,
    required List<GitFile> modified,
    required List<GitFile> staged,
    required List<GitFile> untracked,
    required List<GitFile> conflicted,
    required int ahead,
    required int behind,
  }) = _GitStatus;

  factory GitStatus.fromJson(Map<String, dynamic> json) =>
      _$GitStatusFromJson(json);
}

@freezed
class GitFile with _$GitFile {
  const factory GitFile({
    required String path,
    required GitFileStatus status,
    String? diff,
  }) = _GitFile;

  factory GitFile.fromJson(Map<String, dynamic> json) =>
      _$GitFileFromJson(json);
}

enum GitFileStatus {
  modified,
  added,
  deleted,
  renamed,
  untracked,
  conflicted,
}

@freezed
class GitCommit with _$GitCommit {
  const factory GitCommit({
    required String hash,
    required String shortHash,
    required String message,
    required String author,
    required DateTime date,
    List<String>? parents,
  }) = _GitCommit;

  factory GitCommit.fromJson(Map<String, dynamic> json) =>
      _$GitCommitFromJson(json);
}

@freezed
class GitBranch with _$GitBranch {
  const factory GitBranch({
    required String name,
    required bool isCurrent,
    String? remote,
    required bool isLocal,
  }) = _GitBranch;

  factory GitBranch.fromJson(Map<String, dynamic> json) =>
      _$GitBranchFromJson(json);
}

@freezed
class GitDiff with _$GitDiff {
  const factory GitDiff({
    required String oldPath,
    required String newPath,
    required List<DiffHunk> hunks,
    required bool isNewFile,
    required bool isDeleted,
  }) = _GitDiff;

  factory GitDiff.fromJson(Map<String, dynamic> json) =>
      _$GitDiffFromJson(json);
}

@freezed
class DiffHunk with _$DiffHunk {
  const factory DiffHunk({
    required int oldStart,
    required int oldLines,
    required int newStart,
    required int newLines,
    required List<DiffLine> lines,
  }) = _DiffHunk;

  factory DiffHunk.fromJson(Map<String, dynamic> json) =>
      _$DiffHunkFromJson(json);
}

@freezed
class DiffLine with _$DiffLine {
  const factory DiffLine({
    required DiffLineType type,
    required String content,
    int? oldLineNumber,
    int? newLineNumber,
  }) = _DiffLine;

  factory DiffLine.fromJson(Map<String, dynamic> json) =>
      _$DiffLineFromJson(json);
}

enum DiffLineType {
  context,
  added,
  removed,
}
