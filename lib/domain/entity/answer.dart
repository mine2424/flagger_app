import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

typedef AnswerId = int;

@freezed
class AnswerRequest with _$AnswerRequest {
  const factory AnswerRequest({
    @Default('') String memberId,
    @Default(0) int organizationId,
    @Default(0) int averageScore,
    @Default(0) int eventId,
  }) = _AnswerRequest;

  factory AnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$AnswerRequestFromJson(json);
}

@freezed
class AnswerResponse with _$AnswerResponse {
  const factory AnswerResponse({
    required AnswerId id,
    @Default('') String memberId,
    @Default(0) int organizationId,
    @Default(0) int averageScore,
    @Default(0) int eventId,
  }) = _AnswerResponse;

  factory AnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerResponseFromJson(json);
}
