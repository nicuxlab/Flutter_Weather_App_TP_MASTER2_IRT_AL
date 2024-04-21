import 'package:gadget/model/day_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'day_ref.dart';

part 'forecast_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class ForecastModel {
  @JsonKey(name: 'forecastday')
  final List<Dayref?> ? forecastDay;
  ForecastModel(
      {
         this.forecastDay,
      });

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ForecastModelToJson(this);
}
