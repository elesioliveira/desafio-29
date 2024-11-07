import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class TextApp extends StatelessWidget {
  const TextApp(
      {super.key,
      required this.data,
      this.sizeFont,
      this.fontWeight,
      this.dataColor});
  final String data;
  final double? sizeFont;
  final FontWeight? fontWeight;
  final Color? dataColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      softWrap: true,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      style: GoogleFonts.nunito(
          fontSize: sizeFont ?? 18,
          color: dataColor ?? AppColors.dark10,
          fontWeight: fontWeight),
    );
  }
}
