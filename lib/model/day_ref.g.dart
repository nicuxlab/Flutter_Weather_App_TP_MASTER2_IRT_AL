// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dayref _$DayrefFromJson(Map<String, dynamic> json) => Dayref(
      day: DayModel.fromJson(json['day'] as Map<String, dynamic>),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$DayrefToJson(Dayref instance) => <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
    };
