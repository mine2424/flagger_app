// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventRequestImpl _$$EventRequestImplFromJson(Map<String, dynamic> json) =>
    _$EventRequestImpl(
      organizationId: json['organization_id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      eventDate: json['event_date'] == null
          ? null
          : DateTime.parse(json['event_date'] as String),
    );

Map<String, dynamic> _$$EventRequestImplToJson(_$EventRequestImpl instance) =>
    <String, dynamic>{
      'organization_id': instance.organizationId,
      'title': instance.title,
      'event_date': instance.eventDate?.toIso8601String(),
    };

_$EventResponseImpl _$$EventResponseImplFromJson(Map<String, dynamic> json) =>
    _$EventResponseImpl(
      id: json['id'] as int,
      organizationId: json['organization_id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      eventDate: json['event_date'] == null
          ? null
          : DateTime.parse(json['event_date'] as String),
    );

Map<String, dynamic> _$$EventResponseImplToJson(_$EventResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'organization_id': instance.organizationId,
      'title': instance.title,
      'event_date': instance.eventDate?.toIso8601String(),
    };
