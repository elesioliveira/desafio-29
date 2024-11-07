import 'package:desafio_vinte_nove/core/utils/app_typography.dart';
import 'package:desafio_vinte_nove/core/utils/gaps_system.dart';
import 'package:flutter/material.dart';

class ImageAppPng extends StatelessWidget {
  const ImageAppPng(
      {super.key,
      required this.data,
      this.sizeWidth,
      this.sizeHeight,
      required this.fit,
      this.description,
      this.date,
      this.sizeTextDescritpion});
  final String data;
  final double? sizeWidth;
  final double? sizeHeight;
  final BoxFit fit;
  final String? description;
  final String? date;
  final double? sizeTextDescritpion;

  @override
  Widget build(BuildContext context) {
    double sizeScreen = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          data,
          width: sizeWidth,
          height: sizeHeight,
          fit: fit,
        ),
        Positioned(
          bottom: 15,
          left: 5,
          child: SizedBox(
            width: sizeTextDescritpion ?? sizeScreen * 0.16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextApp(
                  data: date ?? '',
                  dataColor: Colors.white,
                ),
                DSGaps.v6,
                TextApp(
                  data: description ?? '',
                  dataColor: Colors.white,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
