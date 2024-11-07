import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIcons extends StatelessWidget {
  const SvgIcons(
      {super.key,
      required this.sizeIconWidth,
      required this.sizeIconHeigth,
      required this.data});
  final double sizeIconWidth;
  final double sizeIconHeigth;
  final String data;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      data, // Caminho do seu arquivo SVG
      width: sizeIconWidth, // Largura do SVG
      height: sizeIconHeigth, // Altura do SVG
    );
  }
}
