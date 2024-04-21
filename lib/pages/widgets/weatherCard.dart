import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gadget/model/day_ref.dart';

import '../../core/utils/utils.dart';

class WeatherCard extends StatelessWidget {
  final Dayref day;
  const WeatherCard({Key? key,required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 80,
                      child: CachedNetworkImage(
                          imageUrl: "https:${day.day.condition.icon}",
                        errorWidget: (context, url, error) => const Icon(Icons.error,color: Colors.red,),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(day.day.condition.text),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(getDayName(DateTime.parse(day.date!).weekday)),
                        const Icon(Icons.keyboard_arrow_down_sharp, size: 25, color: Colors.black),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.arrow_drop_down,color: Colors.black,),
                        Text('${day.day.minTempC}°C'),
                        const Icon(Icons.arrow_drop_up_rounded ,color: Colors.black,),
                        Text('${day.day.maxTempC}°C'),
                      ],
                    ),
                  ],
                ),

              ],
            ),
            const SizedBox(height: 20), // SizedBox pour l'espace vertical
            Container(
              height: 2, // Épaisseur du Divider
              color: Colors.grey, // Couleur grise
            ), // Divider

          ],
        ),
      ),
    );
  }
}
