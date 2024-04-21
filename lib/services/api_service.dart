import 'package:dio/dio.dart';

import '../model/api_response.dart';

class ApiService {

  String baseUrl = "http://api.weatherapi.com/v1/forecast.json";
  String key = "78b76fda1b194284ba0200734241204";

  String prepareQuery(String city) {
    return "$baseUrl?key=$key&q=$city&days=5&aqi=no";
  }

  Future<ApiResponse> callApi(String city) async {
    final queryString = prepareQuery(city);
    final response = await Dio().get(queryString);
    print("RESULLLLLL: ${response.data["forecast"]}");
    switch (response.statusCode) {
      case 200:
        try{
          final responseFromJson = response.data;
          return ApiResponse.fromJson(responseFromJson);
        }catch (e){
          throw e;
        }
      default:
        final result = response.data;
        throw result;
    }
  }
}