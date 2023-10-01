// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventRequest _$EventRequestFromJson(Map<String, dynamic> json) {
  return _EventRequest.fromJson(json);
}

/// @nodoc
mixin _$EventRequest {
  int get organizationId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime? get eventDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventRequestCopyWith<EventRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRequestCopyWith<$Res> {
  factory $EventRequestCopyWith(
          EventRequest value, $Res Function(EventRequest) then) =
      _$EventRequestCopyWithImpl<$Res, EventRequest>;
  @useResult
  $Res call({int organizationId, String title, DateTime? eventDate});
}

/// @nodoc
class _$EventRequestCopyWithImpl<$Res, $Val extends EventRequest>
    implements $EventRequestCopyWith<$Res> {
  _$EventRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? title = null,
    Object? eventDate = freezed,
  }) {
    return _then(_value.copyWith(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventRequestImplCopyWith<$Res>
    implements $EventRequestCopyWith<$Res> {
  factory _$$EventRequestImplCopyWith(
          _$EventRequestImpl value, $Res Function(_$EventRequestImpl) then) =
      __$$EventRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int organizationId, String title, DateTime? eventDate});
}

/// @nodoc
class __$$EventRequestImplCopyWithImpl<$Res>
    extends _$EventRequestCopyWithImpl<$Res, _$EventRequestImpl>
    implements _$$EventRequestImplCopyWith<$Res> {
  __$$EventRequestImplCopyWithImpl(
      _$EventRequestImpl _value, $Res Function(_$EventRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? title = null,
    Object? eventDate = freezed,
  }) {
    return _then(_$EventRequestImpl(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventRequestImpl implements _EventRequest {
  const _$EventRequestImpl(
      {this.organizationId = 0, this.title = '', this.eventDate});

  factory _$EventRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventRequestImplFromJson(json);

  @override
  @JsonKey()
  final int organizationId;
  @override
  @JsonKey()
  final String title;
  @override
  final DateTime? eventDate;

  @override
  String toString() {
    return 'EventRequest(organizationId: $organizationId, title: $title, eventDate: $eventDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventRequestImpl &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, organizationId, title, eventDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventRequestImplCopyWith<_$EventRequestImpl> get copyWith =>
      __$$EventRequestImplCopyWithImpl<_$EventRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventRequestImplToJson(
      this,
    );
  }
}

abstract class _EventRequest implements EventRequest {
  const factory _EventRequest(
      {final int organizationId,
      final String title,
      final DateTime? eventDate}) = _$EventRequestImpl;

  factory _EventRequest.fromJson(Map<String, dynamic> json) =
      _$EventRequestImpl.fromJson;

  @override
  int get organizationId;
  @override
  String get title;
  @override
  DateTime? get eventDate;
  @override
  @JsonKey(ignore: true)
  _$$EventRequestImplCopyWith<_$EventRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventResponse _$EventResponseFromJson(Map<String, dynamic> json) {
  return _EventResponse.fromJson(json);
}

/// @nodoc
mixin _$EventResponse {
  int get id => throw _privateConstructorUsedError;
  int get organizationId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime? get eventDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventResponseCopyWith<EventResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventResponseCopyWith<$Res> {
  factory $EventResponseCopyWith(
          EventResponse value, $Res Function(EventResponse) then) =
      _$EventResponseCopyWithImpl<$Res, EventResponse>;
  @useResult
  $Res call({int id, int organizationId, String title, DateTime? eventDate});
}

/// @nodoc
class _$EventResponseCopyWithImpl<$Res, $Val extends EventResponse>
    implements $EventResponseCopyWith<$Res> {
  _$EventResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? title = null,
    Object? eventDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventResponseImplCopyWith<$Res>
    implements $EventResponseCopyWith<$Res> {
  factory _$$EventResponseImplCopyWith(
          _$EventResponseImpl value, $Res Function(_$EventResponseImpl) then) =
      __$$EventResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int organizationId, String title, DateTime? eventDate});
}

/// @nodoc
class __$$EventResponseImplCopyWithImpl<$Res>
    extends _$EventResponseCopyWithImpl<$Res, _$EventResponseImpl>
    implements _$$EventResponseImplCopyWith<$Res> {
  __$$EventResponseImplCopyWithImpl(
      _$EventResponseImpl _value, $Res Function(_$EventResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organizationId = null,
    Object? title = null,
    Object? eventDate = freezed,
  }) {
    return _then(_$EventResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      eventDate: freezed == eventDate
          ? _value.eventDate
          : eventDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventResponseImpl implements _EventResponse {
  const _$EventResponseImpl(
      {required this.id,
      this.organizationId = 0,
      this.title = '',
      this.eventDate});

  factory _$EventResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final int organizationId;
  @override
  @JsonKey()
  final String title;
  @override
  final DateTime? eventDate;

  @override
  String toString() {
    return 'EventResponse(id: $id, organizationId: $organizationId, title: $title, eventDate: $eventDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, organizationId, title, eventDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventResponseImplCopyWith<_$EventResponseImpl> get copyWith =>
      __$$EventResponseImplCopyWithImpl<_$EventResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventResponseImplToJson(
      this,
    );
  }
}

abstract class _EventResponse implements EventResponse {
  const factory _EventResponse(
      {required final int id,
      final int organizationId,
      final String title,
      final DateTime? eventDate}) = _$EventResponseImpl;

  factory _EventResponse.fromJson(Map<String, dynamic> json) =
      _$EventResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get organizationId;
  @override
  String get title;
  @override
  DateTime? get eventDate;
  @override
  @JsonKey(ignore: true)
  _$$EventResponseImplCopyWith<_$EventResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
