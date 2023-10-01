import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

typedef EventId = int;

@freezed
class EventRequest with _$EventRequest {
  const factory EventRequest({
    @Default(0) int organizationId,
    @Default('') String title,
    DateTime? eventDate,
  }) = _EventRequest;

  factory EventRequest.fromJson(Map<String, dynamic> json) =>
      _$EventRequestFromJson(json);
}

@freezed
class EventResponse with _$EventResponse {
  const factory EventResponse({
    required EventId id,
    @Default(0) int organizationId,
    @Default('') String title,
    DateTime? eventDate,
  }) = _EventResponse;

  factory EventResponse.fromJson(Map<String, dynamic> json) =>
      _$EventResponseFromJson(json);
}
