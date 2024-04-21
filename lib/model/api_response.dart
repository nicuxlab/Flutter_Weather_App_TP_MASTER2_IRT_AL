import 'package:json_annotation/json_annotation.dart';

import 'current_model.dart';
import 'forecast_model.dart';
import 'location_model.dart';

part 'api_response.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class ApiResponse {
  final LocationModel location;
  final CurrentModel current;
  final ForecastModel forecast;
  ApiResponse(
      {
        required this.location,
        required this.current,
        required this.forecast
      });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
