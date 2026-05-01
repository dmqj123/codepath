// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiConfig _$AiConfigFromJson(Map<String, dynamic> json) {
  return _AiConfig.fromJson(json);
}

/// @nodoc
mixin _$AiConfig {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get apiUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  String get apiKey => throw _privateConstructorUsedError;
  @HiveField(4)
  String get model => throw _privateConstructorUsedError;
  @HiveField(5)
  double get temperature => throw _privateConstructorUsedError;
  @HiveField(6)
  int get maxTokens => throw _privateConstructorUsedError;
  @HiveField(7)
  bool get isDefault => throw _privateConstructorUsedError;
  @HiveField(8)
  AiProvider get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiConfigCopyWith<AiConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiConfigCopyWith<$Res> {
  factory $AiConfigCopyWith(AiConfig value, $Res Function(AiConfig) then) =
      _$AiConfigCopyWithImpl<$Res, AiConfig>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String apiUrl,
      @HiveField(3) String apiKey,
      @HiveField(4) String model,
      @HiveField(5) double temperature,
      @HiveField(6) int maxTokens,
      @HiveField(7) bool isDefault,
      @HiveField(8) AiProvider provider});
}

/// @nodoc
class _$AiConfigCopyWithImpl<$Res, $Val extends AiConfig>
    implements $AiConfigCopyWith<$Res> {
  _$AiConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiUrl = null,
    Object? apiKey = null,
    Object? model = null,
    Object? temperature = null,
    Object? maxTokens = null,
    Object? isDefault = null,
    Object? provider = null,
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
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AiProvider,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiConfigImplCopyWith<$Res>
    implements $AiConfigCopyWith<$Res> {
  factory _$$AiConfigImplCopyWith(
          _$AiConfigImpl value, $Res Function(_$AiConfigImpl) then) =
      __$$AiConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String apiUrl,
      @HiveField(3) String apiKey,
      @HiveField(4) String model,
      @HiveField(5) double temperature,
      @HiveField(6) int maxTokens,
      @HiveField(7) bool isDefault,
      @HiveField(8) AiProvider provider});
}

/// @nodoc
class __$$AiConfigImplCopyWithImpl<$Res>
    extends _$AiConfigCopyWithImpl<$Res, _$AiConfigImpl>
    implements _$$AiConfigImplCopyWith<$Res> {
  __$$AiConfigImplCopyWithImpl(
      _$AiConfigImpl _value, $Res Function(_$AiConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiUrl = null,
    Object? apiKey = null,
    Object? model = null,
    Object? temperature = null,
    Object? maxTokens = null,
    Object? isDefault = null,
    Object? provider = null,
  }) {
    return _then(_$AiConfigImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AiProvider,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiConfigImpl implements _AiConfig {
  const _$AiConfigImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.apiUrl,
      @HiveField(3) required this.apiKey,
      @HiveField(4) this.model = 'gpt-4',
      @HiveField(5) this.temperature = 0.7,
      @HiveField(6) this.maxTokens = 4096,
      @HiveField(7) this.isDefault = false,
      @HiveField(8) this.provider = AiProvider.openAi});

  factory _$AiConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiConfigImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String apiUrl;
  @override
  @HiveField(3)
  final String apiKey;
  @override
  @JsonKey()
  @HiveField(4)
  final String model;
  @override
  @JsonKey()
  @HiveField(5)
  final double temperature;
  @override
  @JsonKey()
  @HiveField(6)
  final int maxTokens;
  @override
  @JsonKey()
  @HiveField(7)
  final bool isDefault;
  @override
  @JsonKey()
  @HiveField(8)
  final AiProvider provider;

  @override
  String toString() {
    return 'AiConfig(id: $id, name: $name, apiUrl: $apiUrl, apiKey: $apiKey, model: $model, temperature: $temperature, maxTokens: $maxTokens, isDefault: $isDefault, provider: $provider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiUrl, apiUrl) || other.apiUrl == apiUrl) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, apiUrl, apiKey, model,
      temperature, maxTokens, isDefault, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiConfigImplCopyWith<_$AiConfigImpl> get copyWith =>
      __$$AiConfigImplCopyWithImpl<_$AiConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiConfigImplToJson(
      this,
    );
  }
}

abstract class _AiConfig implements AiConfig {
  const factory _AiConfig(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String name,
      @HiveField(2) required final String apiUrl,
      @HiveField(3) required final String apiKey,
      @HiveField(4) final String model,
      @HiveField(5) final double temperature,
      @HiveField(6) final int maxTokens,
      @HiveField(7) final bool isDefault,
      @HiveField(8) final AiProvider provider}) = _$AiConfigImpl;

  factory _AiConfig.fromJson(Map<String, dynamic> json) =
      _$AiConfigImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get apiUrl;
  @override
  @HiveField(3)
  String get apiKey;
  @override
  @HiveField(4)
  String get model;
  @override
  @HiveField(5)
  double get temperature;
  @override
  @HiveField(6)
  int get maxTokens;
  @override
  @HiveField(7)
  bool get isDefault;
  @override
  @HiveField(8)
  AiProvider get provider;
  @override
  @JsonKey(ignore: true)
  _$$AiConfigImplCopyWith<_$AiConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiMessage _$AiMessageFromJson(Map<String, dynamic> json) {
  return _AiMessage.fromJson(json);
}

/// @nodoc
mixin _$AiMessage {
  String get id => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  List<AiToolCall>? get toolCalls => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiMessageCopyWith<AiMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiMessageCopyWith<$Res> {
  factory $AiMessageCopyWith(AiMessage value, $Res Function(AiMessage) then) =
      _$AiMessageCopyWithImpl<$Res, AiMessage>;
  @useResult
  $Res call(
      {String id,
      String role,
      String content,
      DateTime? timestamp,
      List<AiToolCall>? toolCalls,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$AiMessageCopyWithImpl<$Res, $Val extends AiMessage>
    implements $AiMessageCopyWith<$Res> {
  _$AiMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timestamp = freezed,
    Object? toolCalls = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toolCalls: freezed == toolCalls
          ? _value.toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<AiToolCall>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiMessageImplCopyWith<$Res>
    implements $AiMessageCopyWith<$Res> {
  factory _$$AiMessageImplCopyWith(
          _$AiMessageImpl value, $Res Function(_$AiMessageImpl) then) =
      __$$AiMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String role,
      String content,
      DateTime? timestamp,
      List<AiToolCall>? toolCalls,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$AiMessageImplCopyWithImpl<$Res>
    extends _$AiMessageCopyWithImpl<$Res, _$AiMessageImpl>
    implements _$$AiMessageImplCopyWith<$Res> {
  __$$AiMessageImplCopyWithImpl(
      _$AiMessageImpl _value, $Res Function(_$AiMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timestamp = freezed,
    Object? toolCalls = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$AiMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toolCalls: freezed == toolCalls
          ? _value._toolCalls
          : toolCalls // ignore: cast_nullable_to_non_nullable
              as List<AiToolCall>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiMessageImpl implements _AiMessage {
  const _$AiMessageImpl(
      {required this.id,
      required this.role,
      required this.content,
      this.timestamp,
      final List<AiToolCall>? toolCalls,
      final Map<String, dynamic>? metadata})
      : _toolCalls = toolCalls,
        _metadata = metadata;

  factory _$AiMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String role;
  @override
  final String content;
  @override
  final DateTime? timestamp;
  final List<AiToolCall>? _toolCalls;
  @override
  List<AiToolCall>? get toolCalls {
    final value = _toolCalls;
    if (value == null) return null;
    if (_toolCalls is EqualUnmodifiableListView) return _toolCalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'AiMessage(id: $id, role: $role, content: $content, timestamp: $timestamp, toolCalls: $toolCalls, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._toolCalls, _toolCalls) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      role,
      content,
      timestamp,
      const DeepCollectionEquality().hash(_toolCalls),
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiMessageImplCopyWith<_$AiMessageImpl> get copyWith =>
      __$$AiMessageImplCopyWithImpl<_$AiMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiMessageImplToJson(
      this,
    );
  }
}

abstract class _AiMessage implements AiMessage {
  const factory _AiMessage(
      {required final String id,
      required final String role,
      required final String content,
      final DateTime? timestamp,
      final List<AiToolCall>? toolCalls,
      final Map<String, dynamic>? metadata}) = _$AiMessageImpl;

  factory _AiMessage.fromJson(Map<String, dynamic> json) =
      _$AiMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get role;
  @override
  String get content;
  @override
  DateTime? get timestamp;
  @override
  List<AiToolCall>? get toolCalls;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AiMessageImplCopyWith<_$AiMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiToolCall _$AiToolCallFromJson(Map<String, dynamic> json) {
  return _AiToolCall.fromJson(json);
}

/// @nodoc
mixin _$AiToolCall {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get function => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiToolCallCopyWith<AiToolCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiToolCallCopyWith<$Res> {
  factory $AiToolCallCopyWith(
          AiToolCall value, $Res Function(AiToolCall) then) =
      _$AiToolCallCopyWithImpl<$Res, AiToolCall>;
  @useResult
  $Res call(
      {String id, String type, Map<String, dynamic> function, String? result});
}

/// @nodoc
class _$AiToolCallCopyWithImpl<$Res, $Val extends AiToolCall>
    implements $AiToolCallCopyWith<$Res> {
  _$AiToolCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? function = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      function: null == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiToolCallImplCopyWith<$Res>
    implements $AiToolCallCopyWith<$Res> {
  factory _$$AiToolCallImplCopyWith(
          _$AiToolCallImpl value, $Res Function(_$AiToolCallImpl) then) =
      __$$AiToolCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String type, Map<String, dynamic> function, String? result});
}

/// @nodoc
class __$$AiToolCallImplCopyWithImpl<$Res>
    extends _$AiToolCallCopyWithImpl<$Res, _$AiToolCallImpl>
    implements _$$AiToolCallImplCopyWith<$Res> {
  __$$AiToolCallImplCopyWithImpl(
      _$AiToolCallImpl _value, $Res Function(_$AiToolCallImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? function = null,
    Object? result = freezed,
  }) {
    return _then(_$AiToolCallImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      function: null == function
          ? _value._function
          : function // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiToolCallImpl implements _AiToolCall {
  const _$AiToolCallImpl(
      {required this.id,
      required this.type,
      required final Map<String, dynamic> function,
      this.result})
      : _function = function;

  factory _$AiToolCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiToolCallImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final Map<String, dynamic> _function;
  @override
  Map<String, dynamic> get function {
    if (_function is EqualUnmodifiableMapView) return _function;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_function);
  }

  @override
  final String? result;

  @override
  String toString() {
    return 'AiToolCall(id: $id, type: $type, function: $function, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiToolCallImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._function, _function) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type,
      const DeepCollectionEquality().hash(_function), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiToolCallImplCopyWith<_$AiToolCallImpl> get copyWith =>
      __$$AiToolCallImplCopyWithImpl<_$AiToolCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiToolCallImplToJson(
      this,
    );
  }
}

abstract class _AiToolCall implements AiToolCall {
  const factory _AiToolCall(
      {required final String id,
      required final String type,
      required final Map<String, dynamic> function,
      final String? result}) = _$AiToolCallImpl;

  factory _AiToolCall.fromJson(Map<String, dynamic> json) =
      _$AiToolCallImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  Map<String, dynamic> get function;
  @override
  String? get result;
  @override
  @JsonKey(ignore: true)
  _$$AiToolCallImplCopyWith<_$AiToolCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AiConversation _$AiConversationFromJson(Map<String, dynamic> json) {
  return _AiConversation.fromJson(json);
}

/// @nodoc
mixin _$AiConversation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get projectId => throw _privateConstructorUsedError;
  List<AiMessage> get messages => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiConversationCopyWith<AiConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiConversationCopyWith<$Res> {
  factory $AiConversationCopyWith(
          AiConversation value, $Res Function(AiConversation) then) =
      _$AiConversationCopyWithImpl<$Res, AiConversation>;
  @useResult
  $Res call(
      {String id,
      String title,
      String projectId,
      List<AiMessage> messages,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$AiConversationCopyWithImpl<$Res, $Val extends AiConversation>
    implements $AiConversationCopyWith<$Res> {
  _$AiConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? projectId = null,
    Object? messages = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AiMessage>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiConversationImplCopyWith<$Res>
    implements $AiConversationCopyWith<$Res> {
  factory _$$AiConversationImplCopyWith(_$AiConversationImpl value,
          $Res Function(_$AiConversationImpl) then) =
      __$$AiConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String projectId,
      List<AiMessage> messages,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$AiConversationImplCopyWithImpl<$Res>
    extends _$AiConversationCopyWithImpl<$Res, _$AiConversationImpl>
    implements _$$AiConversationImplCopyWith<$Res> {
  __$$AiConversationImplCopyWithImpl(
      _$AiConversationImpl _value, $Res Function(_$AiConversationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? projectId = null,
    Object? messages = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AiConversationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<AiMessage>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiConversationImpl implements _AiConversation {
  const _$AiConversationImpl(
      {required this.id,
      required this.title,
      required this.projectId,
      required final List<AiMessage> messages,
      this.createdAt,
      this.updatedAt})
      : _messages = messages;

  factory _$AiConversationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiConversationImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String projectId;
  final List<AiMessage> _messages;
  @override
  List<AiMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AiConversation(id: $id, title: $title, projectId: $projectId, messages: $messages, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiConversationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, projectId,
      const DeepCollectionEquality().hash(_messages), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiConversationImplCopyWith<_$AiConversationImpl> get copyWith =>
      __$$AiConversationImplCopyWithImpl<_$AiConversationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiConversationImplToJson(
      this,
    );
  }
}

abstract class _AiConversation implements AiConversation {
  const factory _AiConversation(
      {required final String id,
      required final String title,
      required final String projectId,
      required final List<AiMessage> messages,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$AiConversationImpl;

  factory _AiConversation.fromJson(Map<String, dynamic> json) =
      _$AiConversationImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get projectId;
  @override
  List<AiMessage> get messages;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AiConversationImplCopyWith<_$AiConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
