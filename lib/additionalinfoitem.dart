import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';

class AdditionalInfoItem extends StatelessWidget {
  final String animationAsset;
  final String lable;
  final String value;
  const AdditionalInfoItem(
      {super.key,
      required this.animationAsset,
      required this.lable,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(animationAsset, height: 50),
        const SizedBox(height: 10),
        Text(lable),
        const SizedBox(height: 8),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
