import 'package:gadget/model/condition_model.dart';
import 'package:gadget/model/day_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'day_ref.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class Dayref {
  final String? date;
  final DayModel day;
  Dayref(
      {
        required this.day,
        required this.date
      });

  factory Dayref.fromJson(Map<String, dynamic> json) =>
      _$DayrefFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$DayrefToJson(this);
}
