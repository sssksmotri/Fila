// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedbackDto _$FeedbackDtoFromJson(Map<String, dynamic> json) => FeedbackDto(
      rate1: (json['rate1'] as num?)?.toInt(),
      rate2: (json['rate2'] as num?)?.toInt(),
      rate3: (json['rate3'] as num?)?.toInt(),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$FeedbackDtoToJson(FeedbackDto instance) =>
    <String, dynamic>{
      if (instance.rate1 case final value?) 'rate1': value,
      if (instance.rate2 case final value?) 'rate2': value,
      if (instance.rate3 case final value?) 'rate3': value,
      if (instance.content case final value?) 'content': value,
    };
