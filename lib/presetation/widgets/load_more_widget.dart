import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_typography.dart';
import '../../core/utils/gaps_system.dart';
import 'svg_icons.dart';

class LoadMoreWidget extends StatelessWidget {
  const LoadMoreWidget(
      {super.key, this.sizeFont, this.sizeIconWidth, this.sizeIconHeigth});
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
          data: 'CARREGAR MAIS',
          fontWeight: FontWeight.bold,
          sizeFont: sizeFont ?? 5.sp,
        ),
        DSGaps.h2,
        SvgIcons(
            sizeIconWidth: sizeIconWidth ?? 20.w,
            sizeIconHeigth: sizeIconHeigth ?? 20.h,
            data: 'assets/icons/arrow.svg')
      ],
    );
  }
}
