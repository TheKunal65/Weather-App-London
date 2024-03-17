import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final String animationAsset;
  final String temperature;
  const HourlyForecastItem(
      {super.key,
      required this.time,
      required this.animationAsset,
      required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Lottie.asset(
              animationAsset,
              height: 37, // Set the height as per your design
            ),
            const SizedBox(height: 8),
            Text(
              temperature,
            ),
          ],
        ),
      ),
    );
  }
}
