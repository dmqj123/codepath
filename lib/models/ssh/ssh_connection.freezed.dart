// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ssh_connection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SshConnection _$SshConnectionFromJson(Map<String, dynamic> json) {
  return _SshConnection.fromJson(json);
}

/// @nodoc
mixin _$SshConnection {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get host => throw _privateConstructorUsedError;
  @HiveField(3)
  int get port => throw _privateConstructorUsedError;
  @HiveField(4)
  String get username => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get password => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get privateKey => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get privateKeyPassword => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get usePrivateKey => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get group => throw _privateConstructorUsedError;
  @HiveField(10)
  List<String> get tags => throw _privateConstructorUsedError;
  @HiveField(11)
  DateTime? get lastConnected => throw _privateConstructorUsedError;
  @HiveField(12)
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SshConnectionCopyWith<SshConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SshConnectionCopyWith<$Res> {
  factory $SshConnectionCopyWith(
          SshConnection value, $Res Function(SshConnection) then) =
      _$SshConnectionCopyWithImpl<$Res, SshConnection>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String host,
      @HiveField(3) int port,
      @HiveField(4) String username,
      @HiveField(5) String? password,
      @HiveField(6) String? privateKey,
      @HiveField(7) String? privateKeyPassword,
      @HiveField(8) bool usePrivateKey,
      @HiveField(9) String? group,
      @HiveField(10) List<String> tags,
      @HiveField(11) DateTime? lastConnected,
      @HiveField(12) bool isFavorite});
}

/// @nodoc
class _$SshConnectionCopyWithImpl<$Res, $Val extends SshConnection>
    implements $SshConnectionCopyWith<$Res> {
  _$SshConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? host = null,
    Object? port = null,
    Object? username = null,
    Object? password = freezed,
    Object? privateKey = freezed,
    Object? privateKeyPassword = freezed,
    Object? usePrivateKey = null,
    Object? group = freezed,
    Object? tags = null,
    Object? lastConnected = freezed,
    Object? isFavorite = null,
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
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKey: freezed == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKeyPassword: freezed == privateKeyPassword
          ? _value.privateKeyPassword
          : privateKeyPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      usePrivateKey: null == usePrivateKey
          ? _value.usePrivateKey
          : usePrivateKey // ignore: cast_nullable_to_non_nullable
              as bool,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastConnected: freezed == lastConnected
          ? _value.lastConnected
          : lastConnected // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SshConnectionImplCopyWith<$Res>
    implements $SshConnectionCopyWith<$Res> {
  factory _$$SshConnectionImplCopyWith(
          _$SshConnectionImpl value, $Res Function(_$SshConnectionImpl) then) =
      __$$SshConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String host,
      @HiveField(3) int port,
      @HiveField(4) String username,
      @HiveField(5) String? password,
      @HiveField(6) String? privateKey,
      @HiveField(7) String? privateKeyPassword,
      @HiveField(8) bool usePrivateKey,
      @HiveField(9) String? group,
      @HiveField(10) List<String> tags,
      @HiveField(11) DateTime? lastConnected,
      @HiveField(12) bool isFavorite});
}

/// @nodoc
class __$$SshConnectionImplCopyWithImpl<$Res>
    extends _$SshConnectionCopyWithImpl<$Res, _$SshConnectionImpl>
    implements _$$SshConnectionImplCopyWith<$Res> {
  __$$SshConnectionImplCopyWithImpl(
      _$SshConnectionImpl _value, $Res Function(_$SshConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? host = null,
    Object? port = null,
    Object? username = null,
    Object? password = freezed,
    Object? privateKey = freezed,
    Object? privateKeyPassword = freezed,
    Object? usePrivateKey = null,
    Object? group = freezed,
    Object? tags = null,
    Object? lastConnected = freezed,
    Object? isFavorite = null,
  }) {
    return _then(_$SshConnectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKey: freezed == privateKey
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      privateKeyPassword: freezed == privateKeyPassword
          ? _value.privateKeyPassword
          : privateKeyPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      usePrivateKey: null == usePrivateKey
          ? _value.usePrivateKey
          : usePrivateKey // ignore: cast_nullable_to_non_nullable
              as bool,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastConnected: freezed == lastConnected
          ? _value.lastConnected
          : lastConnected // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SshConnectionImpl implements _SshConnection {
  const _$SshConnectionImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.host,
      @HiveField(3) required this.port,
      @HiveField(4) required this.username,
      @HiveField(5) this.password,
      @HiveField(6) this.privateKey,
      @HiveField(7) this.privateKeyPassword,
      @HiveField(8) this.usePrivateKey = false,
      @HiveField(9) this.group,
      @HiveField(10) final List<String> tags = const [],
      @HiveField(11) this.lastConnected,
      @HiveField(12) this.isFavorite = false})
      : _tags = tags;

  factory _$SshConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SshConnectionImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String host;
  @override
  @HiveField(3)
  final int port;
  @override
  @HiveField(4)
  final String username;
  @override
  @HiveField(5)
  final String? password;
  @override
  @HiveField(6)
  final String? privateKey;
  @override
  @HiveField(7)
  final String? privateKeyPassword;
  @override
  @JsonKey()
  @HiveField(8)
  final bool usePrivateKey;
  @override
  @HiveField(9)
  final String? group;
  final List<String> _tags;
  @override
  @JsonKey()
  @HiveField(10)
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @HiveField(11)
  final DateTime? lastConnected;
  @override
  @JsonKey()
  @HiveField(12)
  final bool isFavorite;

  @override
  String toString() {
    return 'SshConnection(id: $id, name: $name, host: $host, port: $port, username: $username, password: $password, privateKey: $privateKey, privateKeyPassword: $privateKeyPassword, usePrivateKey: $usePrivateKey, group: $group, tags: $tags, lastConnected: $lastConnected, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SshConnectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.privateKey, privateKey) ||
                other.privateKey == privateKey) &&
            (identical(other.privateKeyPassword, privateKeyPassword) ||
                other.privateKeyPassword == privateKeyPassword) &&
            (identical(other.usePrivateKey, usePrivateKey) ||
                other.usePrivateKey == usePrivateKey) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.lastConnected, lastConnected) ||
                other.lastConnected == lastConnected) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      host,
      port,
      username,
      password,
      privateKey,
      privateKeyPassword,
      usePrivateKey,
      group,
      const DeepCollectionEquality().hash(_tags),
      lastConnected,
      isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SshConnectionImplCopyWith<_$SshConnectionImpl> get copyWith =>
      __$$SshConnectionImplCopyWithImpl<_$SshConnectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SshConnectionImplToJson(
      this,
    );
  }
}

abstract class _SshConnection implements SshConnection {
  const factory _SshConnection(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String host,
      @HiveField(3) required final int port,
      @HiveField(4) required final String username,
      @HiveField(5) final String? password,
      @HiveField(6) final String? privateKey,
      @HiveField(7) final String? privateKeyPassword,
      @HiveField(8) final bool usePrivateKey,
      @HiveField(9) final String? group,
      @HiveField(10) final List<String> tags,
      @HiveField(11) final DateTime? lastConnected,
      @HiveField(12) final bool isFavorite}) = _$SshConnectionImpl;

  factory _SshConnection.fromJson(Map<String, dynamic> json) =
      _$SshConnectionImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get host;
  @override
  @HiveField(3)
  int get port;
  @override
  @HiveField(4)
  String get username;
  @override
  @HiveField(5)
  String? get password;
  @override
  @HiveField(6)
  String? get privateKey;
  @override
  @HiveField(7)
  String? get privateKeyPassword;
  @override
  @HiveField(8)
  bool get usePrivateKey;
  @override
  @HiveField(9)
  String? get group;
  @override
  @HiveField(10)
  List<String> get tags;
  @override
  @HiveField(11)
  DateTime? get lastConnected;
  @override
  @HiveField(12)
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$SshConnectionImplCopyWith<_$SshConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectionState {
  SshConnection get connection => throw _privateConstructorUsedError;
  ConnectionStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  DateTime? get connectedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionStateCopyWith<ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res, ConnectionState>;
  @useResult
  $Res call(
      {SshConnection connection,
      ConnectionStatus status,
      String? errorMessage,
      DateTime? connectedAt});

  $SshConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res, $Val extends ConnectionState>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? connectedAt = freezed,
  }) {
    return _then(_value.copyWith(
      connection: null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as SshConnection,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      connectedAt: freezed == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SshConnectionCopyWith<$Res> get connection {
    return $SshConnectionCopyWith<$Res>(_value.connection, (value) {
      return _then(_value.copyWith(connection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectionStateImplCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$$ConnectionStateImplCopyWith(_$ConnectionStateImpl value,
          $Res Function(_$ConnectionStateImpl) then) =
      __$$ConnectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SshConnection connection,
      ConnectionStatus status,
      String? errorMessage,
      DateTime? connectedAt});

  @override
  $SshConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class __$$ConnectionStateImplCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res, _$ConnectionStateImpl>
    implements _$$ConnectionStateImplCopyWith<$Res> {
  __$$ConnectionStateImplCopyWithImpl(
      _$ConnectionStateImpl _value, $Res Function(_$ConnectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connection = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? connectedAt = freezed,
  }) {
    return _then(_$ConnectionStateImpl(
      connection: null == connection
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as SshConnection,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      connectedAt: freezed == connectedAt
          ? _value.connectedAt
          : connectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ConnectionStateImpl implements _ConnectionState {
  const _$ConnectionStateImpl(
      {required this.connection,
      this.status = ConnectionStatus.disconnected,
      this.errorMessage,
      this.connectedAt});

  @override
  final SshConnection connection;
  @override
  @JsonKey()
  final ConnectionStatus status;
  @override
  final String? errorMessage;
  @override
  final DateTime? connectedAt;

  @override
  String toString() {
    return 'ConnectionState(connection: $connection, status: $status, errorMessage: $errorMessage, connectedAt: $connectedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionStateImpl &&
            (identical(other.connection, connection) ||
                other.connection == connection) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.connectedAt, connectedAt) ||
                other.connectedAt == connectedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, connection, status, errorMessage, connectedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionStateImplCopyWith<_$ConnectionStateImpl> get copyWith =>
      __$$ConnectionStateImplCopyWithImpl<_$ConnectionStateImpl>(
          this, _$identity);
}

abstract class _ConnectionState implements ConnectionState {
  const factory _ConnectionState(
      {required final SshConnection connection,
      final ConnectionStatus status,
      final String? errorMessage,
      final DateTime? connectedAt}) = _$ConnectionStateImpl;

  @override
  SshConnection get connection;
  @override
  ConnectionStatus get status;
  @override
  String? get errorMessage;
  @override
  DateTime? get connectedAt;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionStateImplCopyWith<_$ConnectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
