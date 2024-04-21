import 'package:gadget/model/condition_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'day_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class DayModel {
  @JsonKey(name: 'maxtemp_c')
  final double maxTempC;
  @JsonKey(name: 'mintemp_c')
  final double minTempC;
  final ConditionModel condition;
  DayModel(
      {
        required this.maxTempC,
        required this.minTempC,
        required this.condition
      });

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      _$DayModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$DayModelToJson(this);
}
