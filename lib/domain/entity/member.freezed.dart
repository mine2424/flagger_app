// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemberRequest _$MemberRequestFromJson(Map<String, dynamic> json) {
  return _MemberRequest.fromJson(json);
}

/// @nodoc
mixin _$MemberRequest {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get organizationId => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberRequestCopyWith<MemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberRequestCopyWith<$Res> {
  factory $MemberRequestCopyWith(
          MemberRequest value, $Res Function(MemberRequest) then) =
      _$MemberRequestCopyWithImpl<$Res, MemberRequest>;
  @useResult
  $Res call(
      {String username,
      String email,
      int organizationId,
      DateTime? updatedAt,
      DateTime? createdAt});
}

/// @nodoc
class _$MemberRequestCopyWithImpl<$Res, $Val extends MemberRequest>
    implements $MemberRequestCopyWith<$Res> {
  _$MemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? organizationId = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberRequestImplCopyWith<$Res>
    implements $MemberRequestCopyWith<$Res> {
  factory _$$MemberRequestImplCopyWith(
          _$MemberRequestImpl value, $Res Function(_$MemberRequestImpl) then) =
      __$$MemberRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String email,
      int organizationId,
      DateTime? updatedAt,
      DateTime? createdAt});
}

/// @nodoc
class __$$MemberRequestImplCopyWithImpl<$Res>
    extends _$MemberRequestCopyWithImpl<$Res, _$MemberRequestImpl>
    implements _$$MemberRequestImplCopyWith<$Res> {
  __$$MemberRequestImplCopyWithImpl(
      _$MemberRequestImpl _value, $Res Function(_$MemberRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? organizationId = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MemberRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberRequestImpl implements _MemberRequest {
  const _$MemberRequestImpl(
      {this.username = '',
      this.email = '',
      this.organizationId = 0,
      this.updatedAt,
      this.createdAt});

  factory _$MemberRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberRequestImplFromJson(json);

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final int organizationId;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MemberRequest(username: $username, email: $email, organizationId: $organizationId, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, email, organizationId, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberRequestImplCopyWith<_$MemberRequestImpl> get copyWith =>
      __$$MemberRequestImplCopyWithImpl<_$MemberRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberRequestImplToJson(
      this,
    );
  }
}

abstract class _MemberRequest implements MemberRequest {
  const factory _MemberRequest(
      {final String username,
      final String email,
      final int organizationId,
      final DateTime? updatedAt,
      final DateTime? createdAt}) = _$MemberRequestImpl;

  factory _MemberRequest.fromJson(Map<String, dynamic> json) =
      _$MemberRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  int get organizationId;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MemberRequestImplCopyWith<_$MemberRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberResponse _$MemberResponseFromJson(Map<String, dynamic> json) {
  return _MemberResponse.fromJson(json);
}

/// @nodoc
mixin _$MemberResponse {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get organizationId => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberResponseCopyWith<MemberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberResponseCopyWith<$Res> {
  factory $MemberResponseCopyWith(
          MemberResponse value, $Res Function(MemberResponse) then) =
      _$MemberResponseCopyWithImpl<$Res, MemberResponse>;
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      int organizationId,
      DateTime? updatedAt,
      DateTime? createdAt});
}

/// @nodoc
class _$MemberResponseCopyWithImpl<$Res, $Val extends MemberResponse>
    implements $MemberResponseCopyWith<$Res> {
  _$MemberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? organizationId = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberResponseImplCopyWith<$Res>
    implements $MemberResponseCopyWith<$Res> {
  factory _$$MemberResponseImplCopyWith(_$MemberResponseImpl value,
          $Res Function(_$MemberResponseImpl) then) =
      __$$MemberResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String email,
      int organizationId,
      DateTime? updatedAt,
      DateTime? createdAt});
}

/// @nodoc
class __$$MemberResponseImplCopyWithImpl<$Res>
    extends _$MemberResponseCopyWithImpl<$Res, _$MemberResponseImpl>
    implements _$$MemberResponseImplCopyWith<$Res> {
  __$$MemberResponseImplCopyWithImpl(
      _$MemberResponseImpl _value, $Res Function(_$MemberResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? organizationId = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MemberResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberResponseImpl implements _MemberResponse {
  const _$MemberResponseImpl(
      {this.id = '',
      this.username = '',
      this.email = '',
      this.organizationId = 0,
      this.updatedAt,
      this.createdAt});

  factory _$MemberResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberResponseImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final int organizationId;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MemberResponse(id: $id, username: $username, email: $email, organizationId: $organizationId, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, email, organizationId, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberResponseImplCopyWith<_$MemberResponseImpl> get copyWith =>
      __$$MemberResponseImplCopyWithImpl<_$MemberResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberResponseImplToJson(
      this,
    );
  }
}

abstract class _MemberResponse implements MemberResponse {
  const factory _MemberResponse(
      {final String id,
      final String username,
      final String email,
      final int organizationId,
      final DateTime? updatedAt,
      final DateTime? createdAt}) = _$MemberResponseImpl;

  factory _MemberResponse.fromJson(Map<String, dynamic> json) =
      _$MemberResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  int get organizationId;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MemberResponseImplCopyWith<_$MemberResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
