import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_typography.dart';
import '../../../core/utils/gaps_system.dart';
import '../text_with_icon.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget(
      {super.key,
      this.spacingLeft,
      this.spacingRigth,
      this.sizeFont,
      this.sizeIconHeigth,
      this.sizeIconWidth});
  final double? spacingLeft;
  final double? spacingRigth;
  final double? sizeFont;
  final double? sizeIconHeigth;
  final double? sizeIconWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          SizedBox(
            width: spacingLeft ?? 70.w,
          ),
          TextWithIcon(
            text: 'PT-BR',
            icon: 'assets/icons/arrow.svg',
            sizeFont: sizeFont,
            sizeIconHeigth: sizeIconHeigth,
            sizeIconWidth: sizeIconWidth,
          ),
          const Expanded(child: SizedBox()),
          TextApp(
              data: 'Sobre',
              sizeFont: sizeFont ?? 3.sp,
              fontWeight: FontWeight.w700),
          DSGaps.h12,
          TextApp(
              data: 'Termos de serviço',
              sizeFont: sizeFont ?? 3.sp,
              fontWeight: FontWeight.w700),
          DSGaps.h12,
          TextApp(
              data: 'Politíca de privacidade',
              sizeFont: sizeFont ?? 3.sp,
              fontWeight: FontWeight.w700),
          SizedBox(
            width: spacingRigth ?? 70.w,
          ),
        ],
      ),
    );
  }
}
