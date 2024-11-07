import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage(
      {super.key,
      this.sizeImageWidth,
      this.sizeImageHeigth,
      required this.data});
  final double? sizeImageWidth;
  final double? sizeImageHeigth;
  final String data;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      data, // Caminho do seu arquivo SVG
      width: sizeImageWidth, // Largura do SVG
      height: sizeImageHeigth, // Altura do SVG
    );
  }
}
