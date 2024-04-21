// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayModel _$DayModelFromJson(Map<String, dynamic> json) => DayModel(
      maxTempC: (json['maxtemp_c'] as num).toDouble(),
      minTempC: (json['mintemp_c'] as num).toDouble(),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayModelToJson(DayModel instance) => <String, dynamic>{
      'maxtemp_c': instance.maxTempC,
      'mintemp_c': instance.minTempC,
      'condition': instance.condition,
    };
