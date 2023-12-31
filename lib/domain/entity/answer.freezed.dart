// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerRequest _$AnswerRequestFromJson(Map<String, dynamic> json) {
  return _AnswerRequest.fromJson(json);
}

/// @nodoc
mixin _$AnswerRequest {
  String get memberId => throw _privateConstructorUsedError;
  int get organizationId => throw _privateConstructorUsedError;
  int get averageScore => throw _privateConstructorUsedError;
  int get eventId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerRequestCopyWith<AnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerRequestCopyWith<$Res> {
  factory $AnswerRequestCopyWith(
          AnswerRequest value, $Res Function(AnswerRequest) then) =
      _$AnswerRequestCopyWithImpl<$Res, AnswerRequest>;
  @useResult
  $Res call(
      {String memberId, int organizationId, int averageScore, int eventId});
}

/// @nodoc
class _$AnswerRequestCopyWithImpl<$Res, $Val extends AnswerRequest>
    implements $AnswerRequestCopyWith<$Res> {
  _$AnswerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? organizationId = null,
    Object? averageScore = null,
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerRequestImplCopyWith<$Res>
    implements $AnswerRequestCopyWith<$Res> {
  factory _$$AnswerRequestImplCopyWith(
          _$AnswerRequestImpl value, $Res Function(_$AnswerRequestImpl) then) =
      __$$AnswerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String memberId, int organizationId, int averageScore, int eventId});
}

/// @nodoc
class __$$AnswerRequestImplCopyWithImpl<$Res>
    extends _$AnswerRequestCopyWithImpl<$Res, _$AnswerRequestImpl>
    implements _$$AnswerRequestImplCopyWith<$Res> {
  __$$AnswerRequestImplCopyWithImpl(
      _$AnswerRequestImpl _value, $Res Function(_$AnswerRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? organizationId = null,
    Object? averageScore = null,
    Object? eventId = null,
  }) {
    return _then(_$AnswerRequestImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerRequestImpl implements _AnswerRequest {
  const _$AnswerRequestImpl(
      {this.memberId = '',
      this.organizationId = 0,
      this.averageScore = 0,
      this.eventId = 0});

  factory _$AnswerRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerRequestImplFromJson(json);

  @override
  @JsonKey()
  final String memberId;
  @override
  @JsonKey()
  final int organizationId;
  @override
  @JsonKey()
  final int averageScore;
  @override
  @JsonKey()
  final int eventId;

  @override
  String toString() {
    return 'AnswerRequest(memberId: $memberId, organizationId: $organizationId, averageScore: $averageScore, eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerRequestImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, memberId, organizationId, averageScore, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerRequestImplCopyWith<_$AnswerRequestImpl> get copyWith =>
      __$$AnswerRequestImplCopyWithImpl<_$AnswerRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerRequestImplToJson(
      this,
    );
  }
}

abstract class _AnswerRequest implements AnswerRequest {
  const factory _AnswerRequest(
      {final String memberId,
      final int organizationId,
      final int averageScore,
      final int eventId}) = _$AnswerRequestImpl;

  factory _AnswerRequest.fromJson(Map<String, dynamic> json) =
      _$AnswerRequestImpl.fromJson;

  @override
  String get memberId;
  @override
  int get organizationId;
  @override
  int get averageScore;
  @override
  int get eventId;
  @override
  @JsonKey(ignore: true)
  _$$AnswerRequestImplCopyWith<_$AnswerRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerResponse _$AnswerResponseFromJson(Map<String, dynamic> json) {
  return _AnswerResponse.fromJson(json);
}

/// @nodoc
mixin _$AnswerResponse {
  int get id => throw _privateConstructorUsedError;
  String get memberId => throw _privateConstructorUsedError;
  int get organizationId => throw _privateConstructorUsedError;
  int get averageScore => throw _privateConstructorUsedError;
  int get eventId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerResponseCopyWith<AnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerResponseCopyWith<$Res> {
  factory $AnswerResponseCopyWith(
          AnswerResponse value, $Res Function(AnswerResponse) then) =
      _$AnswerResponseCopyWithImpl<$Res, AnswerResponse>;
  @useResult
  $Res call(
      {int id,
      String memberId,
      int organizationId,
      int averageScore,
      int eventId});
}

/// @nodoc
class _$AnswerResponseCopyWithImpl<$Res, $Val extends AnswerResponse>
    implements $AnswerResponseCopyWith<$Res> {
  _$AnswerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? organizationId = null,
    Object? averageScore = null,
    Object? eventId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerResponseImplCopyWith<$Res>
    implements $AnswerResponseCopyWith<$Res> {
  factory _$$AnswerResponseImplCopyWith(_$AnswerResponseImpl value,
          $Res Function(_$AnswerResponseImpl) then) =
      __$$AnswerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String memberId,
      int organizationId,
      int averageScore,
      int eventId});
}

/// @nodoc
class __$$AnswerResponseImplCopyWithImpl<$Res>
    extends _$AnswerResponseCopyWithImpl<$Res, _$AnswerResponseImpl>
    implements _$$AnswerResponseImplCopyWith<$Res> {
  __$$AnswerResponseImplCopyWithImpl(
      _$AnswerResponseImpl _value, $Res Function(_$AnswerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? organizationId = null,
    Object? averageScore = null,
    Object? eventId = null,
  }) {
    return _then(_$AnswerResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as int,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerResponseImpl implements _AnswerResponse {
  const _$AnswerResponseImpl(
      {required this.id,
      this.memberId = '',
      this.organizationId = 0,
      this.averageScore = 0,
      this.eventId = 0});

  factory _$AnswerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String memberId;
  @override
  @JsonKey()
  final int organizationId;
  @override
  @JsonKey()
  final int averageScore;
  @override
  @JsonKey()
  final int eventId;

  @override
  String toString() {
    return 'AnswerResponse(id: $id, memberId: $memberId, organizationId: $organizationId, averageScore: $averageScore, eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, memberId, organizationId, averageScore, eventId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerResponseImplCopyWith<_$AnswerResponseImpl> get copyWith =>
      __$$AnswerResponseImplCopyWithImpl<_$AnswerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerResponseImplToJson(
      this,
    );
  }
}

abstract class _AnswerResponse implements AnswerResponse {
  const factory _AnswerResponse(
      {required final int id,
      final String memberId,
      final int organizationId,
      final int averageScore,
      final int eventId}) = _$AnswerResponseImpl;

  factory _AnswerResponse.fromJson(Map<String, dynamic> json) =
      _$AnswerResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get memberId;
  @override
  int get organizationId;
  @override
  int get averageScore;
  @override
  int get eventId;
  @override
  @JsonKey(ignore: true)
  _$$AnswerResponseImplCopyWith<_$AnswerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
