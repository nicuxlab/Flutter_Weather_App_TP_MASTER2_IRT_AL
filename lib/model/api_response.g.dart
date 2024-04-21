// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
      forecast:
          ForecastModel.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };
