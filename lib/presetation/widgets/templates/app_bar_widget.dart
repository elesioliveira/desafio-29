import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/gaps_system.dart';
import '../svg_icons.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, this.sizeWidthLogo, this.sizeHeigthLogo});
  final double? sizeWidthLogo;
  final double? sizeHeigthLogo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DSGaps.h12,
              SvgIcons(
                  sizeIconWidth: sizeWidthLogo ?? 20.w,
                  sizeIconHeigth: sizeHeigthLogo ?? 20.h,
                  data: 'assets/icons/logo.svg'),
              const Expanded(child: SizedBox()),
              SvgIcons(
                  sizeIconWidth: 15.w,
                  sizeIconHeigth: 15.h,
                  data: 'assets/icons/user.svg'),
              DSGaps.h8,
              SvgIcons(
                  sizeIconWidth: 15.w,
                  sizeIconHeigth: 15.h,
                  data: 'assets/icons/search.svg'),
              DSGaps.h8,
              SvgIcons(
                  sizeIconWidth: 15.w,
                  sizeIconHeigth: 15.h,
                  data: 'assets/icons/list.svg'),
              DSGaps.h12,
            ],
          ),
          DSGaps.v12,
          Divider(
            thickness: 1,
            height: 1,
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }
}
