import 'package:desafio_vinte_nove/core/utils/gaps_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_typography.dart';
import 'svg_icons.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon(
      {super.key,
      required this.text,
      required this.icon,
      this.sizeFont,
      this.sizeIconWidth,
      this.sizeIconHeigth});
  final String text;
  final String icon;
  final double? sizeFont;
  final double? sizeIconWidth;
  final double? sizeIconHeigth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextApp(
          data: text,
          fontWeight: FontWeight.bold,
          sizeFont: sizeFont ?? 3.sp,
        ),
        DSGaps.h2,
        SvgIcons(
            sizeIconWidth: sizeIconWidth ?? 20.w,
            sizeIconHeigth: sizeIconHeigth ?? 20.h,
            data: icon)
      ],
    );
  }
}
