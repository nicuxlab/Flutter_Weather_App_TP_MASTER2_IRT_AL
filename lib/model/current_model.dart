import 'package:gadget/model/condition_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class CurrentModel {
  @JsonKey(name: 'temp_c')
  final double tempC;
  @JsonKey(name: 'temp_f')
  final double tempF;
  final ConditionModel condition;
  @JsonKey(name: 'precip_mm')
  final double precipMM;
  @JsonKey(name: 'vis_km')
  final double visKm;
  final double uv;
  final double humidity;
  @JsonKey(name: 'feelslike_c')
  final double feelsLikeC;
  double cloud;
  CurrentModel(
      {
        required this.tempC,
        required this.tempF,
        required this.condition,
        required this.cloud,
        required this.feelsLikeC,
        required this.humidity,
        required this.precipMM,
        required this.uv,
        required this.visKm
      });

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$CurrentModelToJson(this);
}
