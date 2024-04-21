import 'package:json_annotation/json_annotation.dart';

part 'condition_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class ConditionModel {
  final String text;
  final String icon;
  final int code;
  ConditionModel(
      {
        required this.text,
        required this.icon,
        required this.code
      });

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ConditionModelToJson(this);
}
