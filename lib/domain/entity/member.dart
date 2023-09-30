import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';
part 'member.g.dart';

typedef MemberId = String;

@freezed
class MemberRequest with _$MemberRequest {
  const factory MemberRequest({
    @Default('') String username,
    @Default('') String email,
    @Default(0) int organizationId,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) = _MemberRequest;

  factory MemberRequest.fromJson(Map<String, dynamic> json) =>
      _$MemberRequestFromJson(json);
}

@freezed
class MemberResponse with _$MemberResponse {
  const factory MemberResponse({
    required MemberId id,
    @Default('') String username,
    @Default('') String email,
    @Default(0) int organizationId,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) = _MemberResponse;

  factory MemberResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberResponseFromJson(json);
}
