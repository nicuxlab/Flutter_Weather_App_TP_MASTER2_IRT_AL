import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gadget/pages/widgets/weatherCard.dart';
import '../services/api_service.dart';


class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
final apiService = ApiService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Météo',style: TextStyle(
          color: Colors.black
        ),),
        elevation: 15,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: apiService.callApi("Lagos"),
            builder: (context,snap) {
              Widget widgets;
              if(snap.hasError){
                widgets =  Center(
                  child: Text('${snap.error}'),
                );
              }else if(snap.hasData){
                final resp = snap.data;
                widgets = Column(
                  children: [
                    ClipRRect(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          color: Colors.grey[200],
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: <Widget>[
                                 Text(
                                   resp?.location.name ?? 'Unknown',
                                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      resp?.location.tzId ?? 'Unknown',
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      resp?.location.country ?? 'Unknown',
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20), // SizedBox pour l'espace vertical
                                Container(
                                  height: 2, // Épaisseur du Divider
                                  color: Colors.grey, // Couleur grise
                                ), // Divider
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${resp!.current.tempC}°C',
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    Image.network(
                                      'https:${resp.current.condition.icon}',
                                      width: 50,
                                      height: 50,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                 Text(
                                  resp.current.condition.text,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(height: 20),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                     Column(
                                      children: [
                                        const Icon(Icons.cloud, size: 25),
                                        Text('${resp.current.cloud}%'),
                                      ],
                                    ),
                                     Column(
                                      children: [
                                        const Icon(Icons.water_drop, size: 25, color: Colors.blue),
                                        Text('${resp.current.precipMM}'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const Icon(Icons.visibility, size: 25, color: Colors.red),
                                        Text('${resp.current.visKm}mm'),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.wb_sunny, size: 25, color: Colors.yellow.shade800),
                                        Text('UV: ${resp.current.uv}'),
                                      ],
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Ressenti: ',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text('${resp.current.feelsLikeC}°C', style: const TextStyle(fontSize: 15)),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Humidité: ',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text('${resp.current.humidity}%', style: const TextStyle(fontSize: 15)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    ListView.builder(
                      shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: resp!.forecast.forecastDay!.length,
                        itemBuilder: (context,index){
                        final data = resp.forecast.forecastDay;
                          return WeatherCard(
                            day: data![index]!,
                          );
                        }),
                  ],
                );
              }else {
                widgets = const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              return widgets;
            }
        ),
      )
    );
  }
}