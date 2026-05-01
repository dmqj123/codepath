// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitStatus _$GitStatusFromJson(Map<String, dynamic> json) {
  return _GitStatus.fromJson(json);
}

/// @nodoc
mixin _$GitStatus {
  String get branch => throw _privateConstructorUsedError;
  List<GitFile> get modified => throw _privateConstructorUsedError;
  List<GitFile> get staged => throw _privateConstructorUsedError;
  List<GitFile> get untracked => throw _privateConstructorUsedError;
  List<GitFile> get conflicted => throw _privateConstructorUsedError;
  int get ahead => throw _privateConstructorUsedError;
  int get behind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitStatusCopyWith<GitStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitStatusCopyWith<$Res> {
  factory $GitStatusCopyWith(GitStatus value, $Res Function(GitStatus) then) =
      _$GitStatusCopyWithImpl<$Res, GitStatus>;
  @useResult
  $Res call(
      {String branch,
      List<GitFile> modified,
      List<GitFile> staged,
      List<GitFile> untracked,
      List<GitFile> conflicted,
      int ahead,
      int behind});
}

/// @nodoc
class _$GitStatusCopyWithImpl<$Res, $Val extends GitStatus>
    implements $GitStatusCopyWith<$Res> {
  _$GitStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
    Object? modified = null,
    Object? staged = null,
    Object? untracked = null,
    Object? conflicted = null,
    Object? ahead = null,
    Object? behind = null,
  }) {
    return _then(_value.copyWith(
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      staged: null == staged
          ? _value.staged
          : staged // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      untracked: null == untracked
          ? _value.untracked
          : untracked // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      conflicted: null == conflicted
          ? _value.conflicted
          : conflicted // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      ahead: null == ahead
          ? _value.ahead
          : ahead // ignore: cast_nullable_to_non_nullable
              as int,
      behind: null == behind
          ? _value.behind
          : behind // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitStatusImplCopyWith<$Res>
    implements $GitStatusCopyWith<$Res> {
  factory _$$GitStatusImplCopyWith(
          _$GitStatusImpl value, $Res Function(_$GitStatusImpl) then) =
      __$$GitStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String branch,
      List<GitFile> modified,
      List<GitFile> staged,
      List<GitFile> untracked,
      List<GitFile> conflicted,
      int ahead,
      int behind});
}

/// @nodoc
class __$$GitStatusImplCopyWithImpl<$Res>
    extends _$GitStatusCopyWithImpl<$Res, _$GitStatusImpl>
    implements _$$GitStatusImplCopyWith<$Res> {
  __$$GitStatusImplCopyWithImpl(
      _$GitStatusImpl _value, $Res Function(_$GitStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
    Object? modified = null,
    Object? staged = null,
    Object? untracked = null,
    Object? conflicted = null,
    Object? ahead = null,
    Object? behind = null,
  }) {
    return _then(_$GitStatusImpl(
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value._modified
          : modified // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      staged: null == staged
          ? _value._staged
          : staged // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      untracked: null == untracked
          ? _value._untracked
          : untracked // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      conflicted: null == conflicted
          ? _value._conflicted
          : conflicted // ignore: cast_nullable_to_non_nullable
              as List<GitFile>,
      ahead: null == ahead
          ? _value.ahead
          : ahead // ignore: cast_nullable_to_non_nullable
              as int,
      behind: null == behind
          ? _value.behind
          : behind // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitStatusImpl implements _GitStatus {
  const _$GitStatusImpl(
      {required this.branch,
      required final List<GitFile> modified,
      required final List<GitFile> staged,
      required final List<GitFile> untracked,
      required final List<GitFile> conflicted,
      required this.ahead,
      required this.behind})
      : _modified = modified,
        _staged = staged,
        _untracked = untracked,
        _conflicted = conflicted;

  factory _$GitStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitStatusImplFromJson(json);

  @override
  final String branch;
  final List<GitFile> _modified;
  @override
  List<GitFile> get modified {
    if (_modified is EqualUnmodifiableListView) return _modified;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modified);
  }

  final List<GitFile> _staged;
  @override
  List<GitFile> get staged {
    if (_staged is EqualUnmodifiableListView) return _staged;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staged);
  }

  final List<GitFile> _untracked;
  @override
  List<GitFile> get untracked {
    if (_untracked is EqualUnmodifiableListView) return _untracked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_untracked);
  }

  final List<GitFile> _conflicted;
  @override
  List<GitFile> get conflicted {
    if (_conflicted is EqualUnmodifiableListView) return _conflicted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conflicted);
  }

  @override
  final int ahead;
  @override
  final int behind;

  @override
  String toString() {
    return 'GitStatus(branch: $branch, modified: $modified, staged: $staged, untracked: $untracked, conflicted: $conflicted, ahead: $ahead, behind: $behind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitStatusImpl &&
            (identical(other.branch, branch) || other.branch == branch) &&
            const DeepCollectionEquality().equals(other._modified, _modified) &&
            const DeepCollectionEquality().equals(other._staged, _staged) &&
            const DeepCollectionEquality()
                .equals(other._untracked, _untracked) &&
            const DeepCollectionEquality()
                .equals(other._conflicted, _conflicted) &&
            (identical(other.ahead, ahead) || other.ahead == ahead) &&
            (identical(other.behind, behind) || other.behind == behind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      branch,
      const DeepCollectionEquality().hash(_modified),
      const DeepCollectionEquality().hash(_staged),
      const DeepCollectionEquality().hash(_untracked),
      const DeepCollectionEquality().hash(_conflicted),
      ahead,
      behind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitStatusImplCopyWith<_$GitStatusImpl> get copyWith =>
      __$$GitStatusImplCopyWithImpl<_$GitStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitStatusImplToJson(
      this,
    );
  }
}

abstract class _GitStatus implements GitStatus {
  const factory _GitStatus(
      {required final String branch,
      required final List<GitFile> modified,
      required final List<GitFile> staged,
      required final List<GitFile> untracked,
      required final List<GitFile> conflicted,
      required final int ahead,
      required final int behind}) = _$GitStatusImpl;

  factory _GitStatus.fromJson(Map<String, dynamic> json) =
      _$GitStatusImpl.fromJson;

  @override
  String get branch;
  @override
  List<GitFile> get modified;
  @override
  List<GitFile> get staged;
  @override
  List<GitFile> get untracked;
  @override
  List<GitFile> get conflicted;
  @override
  int get ahead;
  @override
  int get behind;
  @override
  @JsonKey(ignore: true)
  _$$GitStatusImplCopyWith<_$GitStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitFile _$GitFileFromJson(Map<String, dynamic> json) {
  return _GitFile.fromJson(json);
}

/// @nodoc
mixin _$GitFile {
  String get path => throw _privateConstructorUsedError;
  GitFileStatus get status => throw _privateConstructorUsedError;
  String? get diff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitFileCopyWith<GitFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitFileCopyWith<$Res> {
  factory $GitFileCopyWith(GitFile value, $Res Function(GitFile) then) =
      _$GitFileCopyWithImpl<$Res, GitFile>;
  @useResult
  $Res call({String path, GitFileStatus status, String? diff});
}

/// @nodoc
class _$GitFileCopyWithImpl<$Res, $Val extends GitFile>
    implements $GitFileCopyWith<$Res> {
  _$GitFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? status = null,
    Object? diff = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GitFileStatus,
      diff: freezed == diff
          ? _value.diff
          : diff // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitFileImplCopyWith<$Res> implements $GitFileCopyWith<$Res> {
  factory _$$GitFileImplCopyWith(
          _$GitFileImpl value, $Res Function(_$GitFileImpl) then) =
      __$$GitFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, GitFileStatus status, String? diff});
}

/// @nodoc
class __$$GitFileImplCopyWithImpl<$Res>
    extends _$GitFileCopyWithImpl<$Res, _$GitFileImpl>
    implements _$$GitFileImplCopyWith<$Res> {
  __$$GitFileImplCopyWithImpl(
      _$GitFileImpl _value, $Res Function(_$GitFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? status = null,
    Object? diff = freezed,
  }) {
    return _then(_$GitFileImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GitFileStatus,
      diff: freezed == diff
          ? _value.diff
          : diff // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitFileImpl implements _GitFile {
  const _$GitFileImpl({required this.path, required this.status, this.diff});

  factory _$GitFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitFileImplFromJson(json);

  @override
  final String path;
  @override
  final GitFileStatus status;
  @override
  final String? diff;

  @override
  String toString() {
    return 'GitFile(path: $path, status: $status, diff: $diff)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitFileImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.diff, diff) || other.diff == diff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, status, diff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitFileImplCopyWith<_$GitFileImpl> get copyWith =>
      __$$GitFileImplCopyWithImpl<_$GitFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitFileImplToJson(
      this,
    );
  }
}

abstract class _GitFile implements GitFile {
  const factory _GitFile(
      {required final String path,
      required final GitFileStatus status,
      final String? diff}) = _$GitFileImpl;

  factory _GitFile.fromJson(Map<String, dynamic> json) = _$GitFileImpl.fromJson;

  @override
  String get path;
  @override
  GitFileStatus get status;
  @override
  String? get diff;
  @override
  @JsonKey(ignore: true)
  _$$GitFileImplCopyWith<_$GitFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitCommit _$GitCommitFromJson(Map<String, dynamic> json) {
  return _GitCommit.fromJson(json);
}

/// @nodoc
mixin _$GitCommit {
  String get hash => throw _privateConstructorUsedError;
  String get shortHash => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<String>? get parents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitCommitCopyWith<GitCommit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitCommitCopyWith<$Res> {
  factory $GitCommitCopyWith(GitCommit value, $Res Function(GitCommit) then) =
      _$GitCommitCopyWithImpl<$Res, GitCommit>;
  @useResult
  $Res call(
      {String hash,
      String shortHash,
      String message,
      String author,
      DateTime date,
      List<String>? parents});
}

/// @nodoc
class _$GitCommitCopyWithImpl<$Res, $Val extends GitCommit>
    implements $GitCommitCopyWith<$Res> {
  _$GitCommitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? shortHash = null,
    Object? message = null,
    Object? author = null,
    Object? date = null,
    Object? parents = freezed,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      shortHash: null == shortHash
          ? _value.shortHash
          : shortHash // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parents: freezed == parents
          ? _value.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitCommitImplCopyWith<$Res>
    implements $GitCommitCopyWith<$Res> {
  factory _$$GitCommitImplCopyWith(
          _$GitCommitImpl value, $Res Function(_$GitCommitImpl) then) =
      __$$GitCommitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hash,
      String shortHash,
      String message,
      String author,
      DateTime date,
      List<String>? parents});
}

/// @nodoc
class __$$GitCommitImplCopyWithImpl<$Res>
    extends _$GitCommitCopyWithImpl<$Res, _$GitCommitImpl>
    implements _$$GitCommitImplCopyWith<$Res> {
  __$$GitCommitImplCopyWithImpl(
      _$GitCommitImpl _value, $Res Function(_$GitCommitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? shortHash = null,
    Object? message = null,
    Object? author = null,
    Object? date = null,
    Object? parents = freezed,
  }) {
    return _then(_$GitCommitImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      shortHash: null == shortHash
          ? _value.shortHash
          : shortHash // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      parents: freezed == parents
          ? _value._parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitCommitImpl implements _GitCommit {
  const _$GitCommitImpl(
      {required this.hash,
      required this.shortHash,
      required this.message,
      required this.author,
      required this.date,
      final List<String>? parents})
      : _parents = parents;

  factory _$GitCommitImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitCommitImplFromJson(json);

  @override
  final String hash;
  @override
  final String shortHash;
  @override
  final String message;
  @override
  final String author;
  @override
  final DateTime date;
  final List<String>? _parents;
  @override
  List<String>? get parents {
    final value = _parents;
    if (value == null) return null;
    if (_parents is EqualUnmodifiableListView) return _parents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GitCommit(hash: $hash, shortHash: $shortHash, message: $message, author: $author, date: $date, parents: $parents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitCommitImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.shortHash, shortHash) ||
                other.shortHash == shortHash) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._parents, _parents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash, shortHash, message, author,
      date, const DeepCollectionEquality().hash(_parents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitCommitImplCopyWith<_$GitCommitImpl> get copyWith =>
      __$$GitCommitImplCopyWithImpl<_$GitCommitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitCommitImplToJson(
      this,
    );
  }
}

abstract class _GitCommit implements GitCommit {
  const factory _GitCommit(
      {required final String hash,
      required final String shortHash,
      required final String message,
      required final String author,
      required final DateTime date,
      final List<String>? parents}) = _$GitCommitImpl;

  factory _GitCommit.fromJson(Map<String, dynamic> json) =
      _$GitCommitImpl.fromJson;

  @override
  String get hash;
  @override
  String get shortHash;
  @override
  String get message;
  @override
  String get author;
  @override
  DateTime get date;
  @override
  List<String>? get parents;
  @override
  @JsonKey(ignore: true)
  _$$GitCommitImplCopyWith<_$GitCommitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitBranch _$GitBranchFromJson(Map<String, dynamic> json) {
  return _GitBranch.fromJson(json);
}

/// @nodoc
mixin _$GitBranch {
  String get name => throw _privateConstructorUsedError;
  bool get isCurrent => throw _privateConstructorUsedError;
  String? get remote => throw _privateConstructorUsedError;
  bool get isLocal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitBranchCopyWith<GitBranch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitBranchCopyWith<$Res> {
  factory $GitBranchCopyWith(GitBranch value, $Res Function(GitBranch) then) =
      _$GitBranchCopyWithImpl<$Res, GitBranch>;
  @useResult
  $Res call({String name, bool isCurrent, String? remote, bool isLocal});
}

/// @nodoc
class _$GitBranchCopyWithImpl<$Res, $Val extends GitBranch>
    implements $GitBranchCopyWith<$Res> {
  _$GitBranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isCurrent = null,
    Object? remote = freezed,
    Object? isLocal = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      remote: freezed == remote
          ? _value.remote
          : remote // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitBranchImplCopyWith<$Res>
    implements $GitBranchCopyWith<$Res> {
  factory _$$GitBranchImplCopyWith(
          _$GitBranchImpl value, $Res Function(_$GitBranchImpl) then) =
      __$$GitBranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isCurrent, String? remote, bool isLocal});
}

/// @nodoc
class __$$GitBranchImplCopyWithImpl<$Res>
    extends _$GitBranchCopyWithImpl<$Res, _$GitBranchImpl>
    implements _$$GitBranchImplCopyWith<$Res> {
  __$$GitBranchImplCopyWithImpl(
      _$GitBranchImpl _value, $Res Function(_$GitBranchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isCurrent = null,
    Object? remote = freezed,
    Object? isLocal = null,
  }) {
    return _then(_$GitBranchImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      remote: freezed == remote
          ? _value.remote
          : remote // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitBranchImpl implements _GitBranch {
  const _$GitBranchImpl(
      {required this.name,
      required this.isCurrent,
      this.remote,
      required this.isLocal});

  factory _$GitBranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitBranchImplFromJson(json);

  @override
  final String name;
  @override
  final bool isCurrent;
  @override
  final String? remote;
  @override
  final bool isLocal;

  @override
  String toString() {
    return 'GitBranch(name: $name, isCurrent: $isCurrent, remote: $remote, isLocal: $isLocal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitBranchImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
            (identical(other.remote, remote) || other.remote == remote) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, isCurrent, remote, isLocal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitBranchImplCopyWith<_$GitBranchImpl> get copyWith =>
      __$$GitBranchImplCopyWithImpl<_$GitBranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitBranchImplToJson(
      this,
    );
  }
}

abstract class _GitBranch implements GitBranch {
  const factory _GitBranch(
      {required final String name,
      required final bool isCurrent,
      final String? remote,
      required final bool isLocal}) = _$GitBranchImpl;

  factory _GitBranch.fromJson(Map<String, dynamic> json) =
      _$GitBranchImpl.fromJson;

  @override
  String get name;
  @override
  bool get isCurrent;
  @override
  String? get remote;
  @override
  bool get isLocal;
  @override
  @JsonKey(ignore: true)
  _$$GitBranchImplCopyWith<_$GitBranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitDiff _$GitDiffFromJson(Map<String, dynamic> json) {
  return _GitDiff.fromJson(json);
}

/// @nodoc
mixin _$GitDiff {
  String get oldPath => throw _privateConstructorUsedError;
  String get newPath => throw _privateConstructorUsedError;
  List<DiffHunk> get hunks => throw _privateConstructorUsedError;
  bool get isNewFile => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitDiffCopyWith<GitDiff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitDiffCopyWith<$Res> {
  factory $GitDiffCopyWith(GitDiff value, $Res Function(GitDiff) then) =
      _$GitDiffCopyWithImpl<$Res, GitDiff>;
  @useResult
  $Res call(
      {String oldPath,
      String newPath,
      List<DiffHunk> hunks,
      bool isNewFile,
      bool isDeleted});
}

/// @nodoc
class _$GitDiffCopyWithImpl<$Res, $Val extends GitDiff>
    implements $GitDiffCopyWith<$Res> {
  _$GitDiffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPath = null,
    Object? newPath = null,
    Object? hunks = null,
    Object? isNewFile = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      oldPath: null == oldPath
          ? _value.oldPath
          : oldPath // ignore: cast_nullable_to_non_nullable
              as String,
      newPath: null == newPath
          ? _value.newPath
          : newPath // ignore: cast_nullable_to_non_nullable
              as String,
      hunks: null == hunks
          ? _value.hunks
          : hunks // ignore: cast_nullable_to_non_nullable
              as List<DiffHunk>,
      isNewFile: null == isNewFile
          ? _value.isNewFile
          : isNewFile // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitDiffImplCopyWith<$Res> implements $GitDiffCopyWith<$Res> {
  factory _$$GitDiffImplCopyWith(
          _$GitDiffImpl value, $Res Function(_$GitDiffImpl) then) =
      __$$GitDiffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String oldPath,
      String newPath,
      List<DiffHunk> hunks,
      bool isNewFile,
      bool isDeleted});
}

/// @nodoc
class __$$GitDiffImplCopyWithImpl<$Res>
    extends _$GitDiffCopyWithImpl<$Res, _$GitDiffImpl>
    implements _$$GitDiffImplCopyWith<$Res> {
  __$$GitDiffImplCopyWithImpl(
      _$GitDiffImpl _value, $Res Function(_$GitDiffImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPath = null,
    Object? newPath = null,
    Object? hunks = null,
    Object? isNewFile = null,
    Object? isDeleted = null,
  }) {
    return _then(_$GitDiffImpl(
      oldPath: null == oldPath
          ? _value.oldPath
          : oldPath // ignore: cast_nullable_to_non_nullable
              as String,
      newPath: null == newPath
          ? _value.newPath
          : newPath // ignore: cast_nullable_to_non_nullable
              as String,
      hunks: null == hunks
          ? _value._hunks
          : hunks // ignore: cast_nullable_to_non_nullable
              as List<DiffHunk>,
      isNewFile: null == isNewFile
          ? _value.isNewFile
          : isNewFile // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitDiffImpl implements _GitDiff {
  const _$GitDiffImpl(
      {required this.oldPath,
      required this.newPath,
      required final List<DiffHunk> hunks,
      required this.isNewFile,
      required this.isDeleted})
      : _hunks = hunks;

  factory _$GitDiffImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitDiffImplFromJson(json);

  @override
  final String oldPath;
  @override
  final String newPath;
  final List<DiffHunk> _hunks;
  @override
  List<DiffHunk> get hunks {
    if (_hunks is EqualUnmodifiableListView) return _hunks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hunks);
  }

  @override
  final bool isNewFile;
  @override
  final bool isDeleted;

  @override
  String toString() {
    return 'GitDiff(oldPath: $oldPath, newPath: $newPath, hunks: $hunks, isNewFile: $isNewFile, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitDiffImpl &&
            (identical(other.oldPath, oldPath) || other.oldPath == oldPath) &&
            (identical(other.newPath, newPath) || other.newPath == newPath) &&
            const DeepCollectionEquality().equals(other._hunks, _hunks) &&
            (identical(other.isNewFile, isNewFile) ||
                other.isNewFile == isNewFile) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldPath, newPath,
      const DeepCollectionEquality().hash(_hunks), isNewFile, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitDiffImplCopyWith<_$GitDiffImpl> get copyWith =>
      __$$GitDiffImplCopyWithImpl<_$GitDiffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitDiffImplToJson(
      this,
    );
  }
}

abstract class _GitDiff implements GitDiff {
  const factory _GitDiff(
      {required final String oldPath,
      required final String newPath,
      required final List<DiffHunk> hunks,
      required final bool isNewFile,
      required final bool isDeleted}) = _$GitDiffImpl;

  factory _GitDiff.fromJson(Map<String, dynamic> json) = _$GitDiffImpl.fromJson;

  @override
  String get oldPath;
  @override
  String get newPath;
  @override
  List<DiffHunk> get hunks;
  @override
  bool get isNewFile;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$GitDiffImplCopyWith<_$GitDiffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiffHunk _$DiffHunkFromJson(Map<String, dynamic> json) {
  return _DiffHunk.fromJson(json);
}

/// @nodoc
mixin _$DiffHunk {
  int get oldStart => throw _privateConstructorUsedError;
  int get oldLines => throw _privateConstructorUsedError;
  int get newStart => throw _privateConstructorUsedError;
  int get newLines => throw _privateConstructorUsedError;
  List<DiffLine> get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiffHunkCopyWith<DiffHunk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiffHunkCopyWith<$Res> {
  factory $DiffHunkCopyWith(DiffHunk value, $Res Function(DiffHunk) then) =
      _$DiffHunkCopyWithImpl<$Res, DiffHunk>;
  @useResult
  $Res call(
      {int oldStart,
      int oldLines,
      int newStart,
      int newLines,
      List<DiffLine> lines});
}

/// @nodoc
class _$DiffHunkCopyWithImpl<$Res, $Val extends DiffHunk>
    implements $DiffHunkCopyWith<$Res> {
  _$DiffHunkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldStart = null,
    Object? oldLines = null,
    Object? newStart = null,
    Object? newLines = null,
    Object? lines = null,
  }) {
    return _then(_value.copyWith(
      oldStart: null == oldStart
          ? _value.oldStart
          : oldStart // ignore: cast_nullable_to_non_nullable
              as int,
      oldLines: null == oldLines
          ? _value.oldLines
          : oldLines // ignore: cast_nullable_to_non_nullable
              as int,
      newStart: null == newStart
          ? _value.newStart
          : newStart // ignore: cast_nullable_to_non_nullable
              as int,
      newLines: null == newLines
          ? _value.newLines
          : newLines // ignore: cast_nullable_to_non_nullable
              as int,
      lines: null == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<DiffLine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiffHunkImplCopyWith<$Res>
    implements $DiffHunkCopyWith<$Res> {
  factory _$$DiffHunkImplCopyWith(
          _$DiffHunkImpl value, $Res Function(_$DiffHunkImpl) then) =
      __$$DiffHunkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int oldStart,
      int oldLines,
      int newStart,
      int newLines,
      List<DiffLine> lines});
}

/// @nodoc
class __$$DiffHunkImplCopyWithImpl<$Res>
    extends _$DiffHunkCopyWithImpl<$Res, _$DiffHunkImpl>
    implements _$$DiffHunkImplCopyWith<$Res> {
  __$$DiffHunkImplCopyWithImpl(
      _$DiffHunkImpl _value, $Res Function(_$DiffHunkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldStart = null,
    Object? oldLines = null,
    Object? newStart = null,
    Object? newLines = null,
    Object? lines = null,
  }) {
    return _then(_$DiffHunkImpl(
      oldStart: null == oldStart
          ? _value.oldStart
          : oldStart // ignore: cast_nullable_to_non_nullable
              as int,
      oldLines: null == oldLines
          ? _value.oldLines
          : oldLines // ignore: cast_nullable_to_non_nullable
              as int,
      newStart: null == newStart
          ? _value.newStart
          : newStart // ignore: cast_nullable_to_non_nullable
              as int,
      newLines: null == newLines
          ? _value.newLines
          : newLines // ignore: cast_nullable_to_non_nullable
              as int,
      lines: null == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<DiffLine>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiffHunkImpl implements _DiffHunk {
  const _$DiffHunkImpl(
      {required this.oldStart,
      required this.oldLines,
      required this.newStart,
      required this.newLines,
      required final List<DiffLine> lines})
      : _lines = lines;

  factory _$DiffHunkImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiffHunkImplFromJson(json);

  @override
  final int oldStart;
  @override
  final int oldLines;
  @override
  final int newStart;
  @override
  final int newLines;
  final List<DiffLine> _lines;
  @override
  List<DiffLine> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  String toString() {
    return 'DiffHunk(oldStart: $oldStart, oldLines: $oldLines, newStart: $newStart, newLines: $newLines, lines: $lines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiffHunkImpl &&
            (identical(other.oldStart, oldStart) ||
                other.oldStart == oldStart) &&
            (identical(other.oldLines, oldLines) ||
                other.oldLines == oldLines) &&
            (identical(other.newStart, newStart) ||
                other.newStart == newStart) &&
            (identical(other.newLines, newLines) ||
                other.newLines == newLines) &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldStart, oldLines, newStart,
      newLines, const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiffHunkImplCopyWith<_$DiffHunkImpl> get copyWith =>
      __$$DiffHunkImplCopyWithImpl<_$DiffHunkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiffHunkImplToJson(
      this,
    );
  }
}

abstract class _DiffHunk implements DiffHunk {
  const factory _DiffHunk(
      {required final int oldStart,
      required final int oldLines,
      required final int newStart,
      required final int newLines,
      required final List<DiffLine> lines}) = _$DiffHunkImpl;

  factory _DiffHunk.fromJson(Map<String, dynamic> json) =
      _$DiffHunkImpl.fromJson;

  @override
  int get oldStart;
  @override
  int get oldLines;
  @override
  int get newStart;
  @override
  int get newLines;
  @override
  List<DiffLine> get lines;
  @override
  @JsonKey(ignore: true)
  _$$DiffHunkImplCopyWith<_$DiffHunkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiffLine _$DiffLineFromJson(Map<String, dynamic> json) {
  return _DiffLine.fromJson(json);
}

/// @nodoc
mixin _$DiffLine {
  DiffLineType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int? get oldLineNumber => throw _privateConstructorUsedError;
  int? get newLineNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiffLineCopyWith<DiffLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiffLineCopyWith<$Res> {
  factory $DiffLineCopyWith(DiffLine value, $Res Function(DiffLine) then) =
      _$DiffLineCopyWithImpl<$Res, DiffLine>;
  @useResult
  $Res call(
      {DiffLineType type,
      String content,
      int? oldLineNumber,
      int? newLineNumber});
}

/// @nodoc
class _$DiffLineCopyWithImpl<$Res, $Val extends DiffLine>
    implements $DiffLineCopyWith<$Res> {
  _$DiffLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? oldLineNumber = freezed,
    Object? newLineNumber = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DiffLineType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      oldLineNumber: freezed == oldLineNumber
          ? _value.oldLineNumber
          : oldLineNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      newLineNumber: freezed == newLineNumber
          ? _value.newLineNumber
          : newLineNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiffLineImplCopyWith<$Res>
    implements $DiffLineCopyWith<$Res> {
  factory _$$DiffLineImplCopyWith(
          _$DiffLineImpl value, $Res Function(_$DiffLineImpl) then) =
      __$$DiffLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DiffLineType type,
      String content,
      int? oldLineNumber,
      int? newLineNumber});
}

/// @nodoc
class __$$DiffLineImplCopyWithImpl<$Res>
    extends _$DiffLineCopyWithImpl<$Res, _$DiffLineImpl>
    implements _$$DiffLineImplCopyWith<$Res> {
  __$$DiffLineImplCopyWithImpl(
      _$DiffLineImpl _value, $Res Function(_$DiffLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? content = null,
    Object? oldLineNumber = freezed,
    Object? newLineNumber = freezed,
  }) {
    return _then(_$DiffLineImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DiffLineType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      oldLineNumber: freezed == oldLineNumber
          ? _value.oldLineNumber
          : oldLineNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      newLineNumber: freezed == newLineNumber
          ? _value.newLineNumber
          : newLineNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiffLineImpl implements _DiffLine {
  const _$DiffLineImpl(
      {required this.type,
      required this.content,
      this.oldLineNumber,
      this.newLineNumber});

  factory _$DiffLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiffLineImplFromJson(json);

  @override
  final DiffLineType type;
  @override
  final String content;
  @override
  final int? oldLineNumber;
  @override
  final int? newLineNumber;

  @override
  String toString() {
    return 'DiffLine(type: $type, content: $content, oldLineNumber: $oldLineNumber, newLineNumber: $newLineNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiffLineImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.oldLineNumber, oldLineNumber) ||
                other.oldLineNumber == oldLineNumber) &&
            (identical(other.newLineNumber, newLineNumber) ||
                other.newLineNumber == newLineNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, content, oldLineNumber, newLineNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiffLineImplCopyWith<_$DiffLineImpl> get copyWith =>
      __$$DiffLineImplCopyWithImpl<_$DiffLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiffLineImplToJson(
      this,
    );
  }
}

abstract class _DiffLine implements DiffLine {
  const factory _DiffLine(
      {required final DiffLineType type,
      required final String content,
      final int? oldLineNumber,
      final int? newLineNumber}) = _$DiffLineImpl;

  factory _DiffLine.fromJson(Map<String, dynamic> json) =
      _$DiffLineImpl.fromJson;

  @override
  DiffLineType get type;
  @override
  String get content;
  @override
  int? get oldLineNumber;
  @override
  int? get newLineNumber;
  @override
  @JsonKey(ignore: true)
  _$$DiffLineImplCopyWith<_$DiffLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
