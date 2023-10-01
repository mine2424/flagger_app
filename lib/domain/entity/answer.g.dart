// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerRequestImpl _$$AnswerRequestImplFromJson(Map<String, dynamic> json) =>
    _$AnswerRequestImpl(
      memberId: json['member_id'] as String? ?? '',
      organizationId: json['organization_id'] as int? ?? 0,
      averageScore: json['average_score'] as int? ?? 0,
      eventId: json['event_id'] as int? ?? 0,
    );

Map<String, dynamic> _$$AnswerRequestImplToJson(_$AnswerRequestImpl instance) =>
    <String, dynamic>{
      'member_id': instance.memberId,
      'organization_id': instance.organizationId,
      'average_score': instance.averageScore,
      'event_id': instance.eventId,
    };

_$AnswerResponseImpl _$$AnswerResponseImplFromJson(Map<String, dynamic> json) =>
    _$AnswerResponseImpl(
      id: json['id'] as int,
      memberId: json['member_id'] as String? ?? '',
      organizationId: json['organization_id'] as int? ?? 0,
      averageScore: json['average_score'] as int? ?? 0,
      eventId: json['event_id'] as int? ?? 0,
    );

Map<String, dynamic> _$$AnswerResponseImplToJson(
        _$AnswerResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'member_id': instance.memberId,
      'organization_id': instance.organizationId,
      'average_score': instance.averageScore,
      'event_id': instance.eventId,
    };
