import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class LocationModel {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  @JsonKey(name: 'tz_id')
  final String tzId;
  @JsonKey(name: 'localtime_epoch')
  final double localtimeEpoch;
  final String localtime;
  LocationModel(
      {
        required this.name,
        required this.lat,
        required this.country,
        required this.localtime,
        required this.localtimeEpoch,
        required this.lon,
        required this.region,
        required this.tzId,
      });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
