// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) => CurrentModel(
      tempC: (json['temp_c'] as num).toDouble(),
      tempF: (json['temp_f'] as num).toDouble(),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      cloud: (json['cloud'] as num).toDouble(),
      feelsLikeC: (json['feelslike_c'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      precipMM: (json['precip_mm'] as num).toDouble(),
      uv: (json['uv'] as num).toDouble(),
      visKm: (json['vis_km'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentModelToJson(CurrentModel instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'condition': instance.condition,
      'precip_mm': instance.precipMM,
      'vis_km': instance.visKm,
      'uv': instance.uv,
      'humidity': instance.humidity,
      'feelslike_c': instance.feelsLikeC,
      'cloud': instance.cloud,
    };
