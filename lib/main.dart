import 'package:flutter/material.dart';
import 'package:gadget/pages/weather.dart';

void main() {
  runApp(const MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({Key? key}) : super(key: key);
  //flutter pub run build_runner watch --delete-conflicting-outputs
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Météo',
      theme: ThemeData(
       // primarySwatch: Colors.grey,
      ),
      home: const WeatherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


