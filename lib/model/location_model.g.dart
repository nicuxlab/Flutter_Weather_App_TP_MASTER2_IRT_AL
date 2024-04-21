// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      country: json['country'] as String,
      localtime: json['localtime'] as String,
      localtimeEpoch: (json['localtime_epoch'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      region: json['region'] as String,
      tzId: json['tz_id'] as String,
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime_epoch': instance.localtimeEpoch,
      'localtime': instance.localtime,
    };
