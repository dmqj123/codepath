// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get remotePath => throw _privateConstructorUsedError;
  @HiveField(3)
  String get sshConnectionId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(5)
  List<String> get tags => throw _privateConstructorUsedError;
  @HiveField(6)
  DateTime? get lastOpened => throw _privateConstructorUsedError;
  @HiveField(7)
  bool get isFavorite => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get language => throw _privateConstructorUsedError;
  @HiveField(9)
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String remotePath,
      @HiveField(3) String sshConnectionId,
      @HiveField(4) String? description,
      @HiveField(5) List<String> tags,
      @HiveField(6) DateTime? lastOpened,
      @HiveField(7) bool isFavorite,
      @HiveField(8) String? language,
      @HiveField(9) Map<String, dynamic> settings});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? remotePath = null,
    Object? sshConnectionId = null,
    Object? description = freezed,
    Object? tags = null,
    Object? lastOpened = freezed,
    Object? isFavorite = null,
    Object? language = freezed,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      remotePath: null == remotePath
          ? _value.remotePath
          : remotePath // ignore: cast_nullable_to_non_nullable
              as String,
      sshConnectionId: null == sshConnectionId
          ? _value.sshConnectionId
          : sshConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastOpened: freezed == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String remotePath,
      @HiveField(3) String sshConnectionId,
      @HiveField(4) String? description,
      @HiveField(5) List<String> tags,
      @HiveField(6) DateTime? lastOpened,
      @HiveField(7) bool isFavorite,
      @HiveField(8) String? language,
      @HiveField(9) Map<String, dynamic> settings});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? remotePath = null,
    Object? sshConnectionId = null,
    Object? description = freezed,
    Object? tags = null,
    Object? lastOpened = freezed,
    Object? isFavorite = null,
    Object? language = freezed,
    Object? settings = null,
  }) {
    return _then(_$ProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      remotePath: null == remotePath
          ? _value.remotePath
          : remotePath // ignore: cast_nullable_to_non_nullable
              as String,
      sshConnectionId: null == sshConnectionId
          ? _value.sshConnectionId
          : sshConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastOpened: freezed == lastOpened
          ? _value.lastOpened
          : lastOpened // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.remotePath,
      @HiveField(3) required this.sshConnectionId,
      @HiveField(4) this.description,
      @HiveField(5) final List<String> tags = const [],
      @HiveField(6) this.lastOpened,
      @HiveField(7) this.isFavorite = false,
      @HiveField(8) this.language,
      @HiveField(9) final Map<String, dynamic> settings = const {}})
      : _tags = tags,
        _settings = settings;

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String remotePath;
  @override
  @HiveField(3)
  final String sshConnectionId;
  @override
  @HiveField(4)
  final String? description;
  final List<String> _tags;
  @override
  @JsonKey()
  @HiveField(5)
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @HiveField(6)
  final DateTime? lastOpened;
  @override
  @JsonKey()
  @HiveField(7)
  final bool isFavorite;
  @override
  @HiveField(8)
  final String? language;
  final Map<String, dynamic> _settings;
  @override
  @JsonKey()
  @HiveField(9)
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  String toString() {
    return 'Project(id: $id, name: $name, remotePath: $remotePath, sshConnectionId: $sshConnectionId, description: $description, tags: $tags, lastOpened: $lastOpened, isFavorite: $isFavorite, language: $language, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.remotePath, remotePath) ||
                other.remotePath == remotePath) &&
            (identical(other.sshConnectionId, sshConnectionId) ||
                other.sshConnectionId == sshConnectionId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.lastOpened, lastOpened) ||
                other.lastOpened == lastOpened) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      remotePath,
      sshConnectionId,
      description,
      const DeepCollectionEquality().hash(_tags),
      lastOpened,
      isFavorite,
      language,
      const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String remotePath,
      @HiveField(3) required final String sshConnectionId,
      @HiveField(4) final String? description,
      @HiveField(5) final List<String> tags,
      @HiveField(6) final DateTime? lastOpened,
      @HiveField(7) final bool isFavorite,
      @HiveField(8) final String? language,
      @HiveField(9) final Map<String, dynamic> settings}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get remotePath;
  @override
  @HiveField(3)
  String get sshConnectionId;
  @override
  @HiveField(4)
  String? get description;
  @override
  @HiveField(5)
  List<String> get tags;
  @override
  @HiveField(6)
  DateTime? get lastOpened;
  @override
  @HiveField(7)
  bool get isFavorite;
  @override
  @HiveField(8)
  String? get language;
  @override
  @HiveField(9)
  Map<String, dynamic> get settings;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectSession _$ProjectSessionFromJson(Map<String, dynamic> json) {
  return _ProjectSession.fromJson(json);
}

/// @nodoc
mixin _$ProjectSession {
  String get projectId => throw _privateConstructorUsedError;
  String get sshConnectionId => throw _privateConstructorUsedError;
  String get currentPath => throw _privateConstructorUsedError;
  List<OpenFile>? get openFiles => throw _privateConstructorUsedError;
  String? get activeFileId => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectSessionCopyWith<ProjectSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectSessionCopyWith<$Res> {
  factory $ProjectSessionCopyWith(
          ProjectSession value, $Res Function(ProjectSession) then) =
      _$ProjectSessionCopyWithImpl<$Res, ProjectSession>;
  @useResult
  $Res call(
      {String projectId,
      String sshConnectionId,
      String currentPath,
      List<OpenFile>? openFiles,
      String? activeFileId,
      DateTime? startedAt});
}

/// @nodoc
class _$ProjectSessionCopyWithImpl<$Res, $Val extends ProjectSession>
    implements $ProjectSessionCopyWith<$Res> {
  _$ProjectSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? sshConnectionId = null,
    Object? currentPath = null,
    Object? openFiles = freezed,
    Object? activeFileId = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      sshConnectionId: null == sshConnectionId
          ? _value.sshConnectionId
          : sshConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPath: null == currentPath
          ? _value.currentPath
          : currentPath // ignore: cast_nullable_to_non_nullable
              as String,
      openFiles: freezed == openFiles
          ? _value.openFiles
          : openFiles // ignore: cast_nullable_to_non_nullable
              as List<OpenFile>?,
      activeFileId: freezed == activeFileId
          ? _value.activeFileId
          : activeFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectSessionImplCopyWith<$Res>
    implements $ProjectSessionCopyWith<$Res> {
  factory _$$ProjectSessionImplCopyWith(_$ProjectSessionImpl value,
          $Res Function(_$ProjectSessionImpl) then) =
      __$$ProjectSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      String sshConnectionId,
      String currentPath,
      List<OpenFile>? openFiles,
      String? activeFileId,
      DateTime? startedAt});
}

/// @nodoc
class __$$ProjectSessionImplCopyWithImpl<$Res>
    extends _$ProjectSessionCopyWithImpl<$Res, _$ProjectSessionImpl>
    implements _$$ProjectSessionImplCopyWith<$Res> {
  __$$ProjectSessionImplCopyWithImpl(
      _$ProjectSessionImpl _value, $Res Function(_$ProjectSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? sshConnectionId = null,
    Object? currentPath = null,
    Object? openFiles = freezed,
    Object? activeFileId = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_$ProjectSessionImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      sshConnectionId: null == sshConnectionId
          ? _value.sshConnectionId
          : sshConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      currentPath: null == currentPath
          ? _value.currentPath
          : currentPath // ignore: cast_nullable_to_non_nullable
              as String,
      openFiles: freezed == openFiles
          ? _value._openFiles
          : openFiles // ignore: cast_nullable_to_non_nullable
              as List<OpenFile>?,
      activeFileId: freezed == activeFileId
          ? _value.activeFileId
          : activeFileId // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectSessionImpl implements _ProjectSession {
  const _$ProjectSessionImpl(
      {required this.projectId,
      required this.sshConnectionId,
      required this.currentPath,
      final List<OpenFile>? openFiles,
      this.activeFileId,
      this.startedAt})
      : _openFiles = openFiles;

  factory _$ProjectSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectSessionImplFromJson(json);

  @override
  final String projectId;
  @override
  final String sshConnectionId;
  @override
  final String currentPath;
  final List<OpenFile>? _openFiles;
  @override
  List<OpenFile>? get openFiles {
    final value = _openFiles;
    if (value == null) return null;
    if (_openFiles is EqualUnmodifiableListView) return _openFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? activeFileId;
  @override
  final DateTime? startedAt;

  @override
  String toString() {
    return 'ProjectSession(projectId: $projectId, sshConnectionId: $sshConnectionId, currentPath: $currentPath, openFiles: $openFiles, activeFileId: $activeFileId, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectSessionImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.sshConnectionId, sshConnectionId) ||
                other.sshConnectionId == sshConnectionId) &&
            (identical(other.currentPath, currentPath) ||
                other.currentPath == currentPath) &&
            const DeepCollectionEquality()
                .equals(other._openFiles, _openFiles) &&
            (identical(other.activeFileId, activeFileId) ||
                other.activeFileId == activeFileId) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectId,
      sshConnectionId,
      currentPath,
      const DeepCollectionEquality().hash(_openFiles),
      activeFileId,
      startedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectSessionImplCopyWith<_$ProjectSessionImpl> get copyWith =>
      __$$ProjectSessionImplCopyWithImpl<_$ProjectSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectSessionImplToJson(
      this,
    );
  }
}

abstract class _ProjectSession implements ProjectSession {
  const factory _ProjectSession(
      {required final String projectId,
      required final String sshConnectionId,
      required final String currentPath,
      final List<OpenFile>? openFiles,
      final String? activeFileId,
      final DateTime? startedAt}) = _$ProjectSessionImpl;

  factory _ProjectSession.fromJson(Map<String, dynamic> json) =
      _$ProjectSessionImpl.fromJson;

  @override
  String get projectId;
  @override
  String get sshConnectionId;
  @override
  String get currentPath;
  @override
  List<OpenFile>? get openFiles;
  @override
  String? get activeFileId;
  @override
  DateTime? get startedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProjectSessionImplCopyWith<_$ProjectSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenFile _$OpenFileFromJson(Map<String, dynamic> json) {
  return _OpenFile.fromJson(json);
}

/// @nodoc
mixin _$OpenFile {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  bool get isModified => throw _privateConstructorUsedError;
  int? get cursorPosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenFileCopyWith<OpenFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFileCopyWith<$Res> {
  factory $OpenFileCopyWith(OpenFile value, $Res Function(OpenFile) then) =
      _$OpenFileCopyWithImpl<$Res, OpenFile>;
  @useResult
  $Res call(
      {String id,
      String path,
      String name,
      String? content,
      bool isModified,
      int? cursorPosition});
}

/// @nodoc
class _$OpenFileCopyWithImpl<$Res, $Val extends OpenFile>
    implements $OpenFileCopyWith<$Res> {
  _$OpenFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
    Object? content = freezed,
    Object? isModified = null,
    Object? cursorPosition = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isModified: null == isModified
          ? _value.isModified
          : isModified // ignore: cast_nullable_to_non_nullable
              as bool,
      cursorPosition: freezed == cursorPosition
          ? _value.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenFileImplCopyWith<$Res>
    implements $OpenFileCopyWith<$Res> {
  factory _$$OpenFileImplCopyWith(
          _$OpenFileImpl value, $Res Function(_$OpenFileImpl) then) =
      __$$OpenFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      String name,
      String? content,
      bool isModified,
      int? cursorPosition});
}

/// @nodoc
class __$$OpenFileImplCopyWithImpl<$Res>
    extends _$OpenFileCopyWithImpl<$Res, _$OpenFileImpl>
    implements _$$OpenFileImplCopyWith<$Res> {
  __$$OpenFileImplCopyWithImpl(
      _$OpenFileImpl _value, $Res Function(_$OpenFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? name = null,
    Object? content = freezed,
    Object? isModified = null,
    Object? cursorPosition = freezed,
  }) {
    return _then(_$OpenFileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      isModified: null == isModified
          ? _value.isModified
          : isModified // ignore: cast_nullable_to_non_nullable
              as bool,
      cursorPosition: freezed == cursorPosition
          ? _value.cursorPosition
          : cursorPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenFileImpl implements _OpenFile {
  const _$OpenFileImpl(
      {required this.id,
      required this.path,
      required this.name,
      this.content,
      this.isModified = false,
      this.cursorPosition});

  factory _$OpenFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenFileImplFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final String name;
  @override
  final String? content;
  @override
  @JsonKey()
  final bool isModified;
  @override
  final int? cursorPosition;

  @override
  String toString() {
    return 'OpenFile(id: $id, path: $path, name: $name, content: $content, isModified: $isModified, cursorPosition: $cursorPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isModified, isModified) ||
                other.isModified == isModified) &&
            (identical(other.cursorPosition, cursorPosition) ||
                other.cursorPosition == cursorPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, path, name, content, isModified, cursorPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenFileImplCopyWith<_$OpenFileImpl> get copyWith =>
      __$$OpenFileImplCopyWithImpl<_$OpenFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenFileImplToJson(
      this,
    );
  }
}

abstract class _OpenFile implements OpenFile {
  const factory _OpenFile(
      {required final String id,
      required final String path,
      required final String name,
      final String? content,
      final bool isModified,
      final int? cursorPosition}) = _$OpenFileImpl;

  factory _OpenFile.fromJson(Map<String, dynamic> json) =
      _$OpenFileImpl.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  String get name;
  @override
  String? get content;
  @override
  bool get isModified;
  @override
  int? get cursorPosition;
  @override
  @JsonKey(ignore: true)
  _$$OpenFileImplCopyWith<_$OpenFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
