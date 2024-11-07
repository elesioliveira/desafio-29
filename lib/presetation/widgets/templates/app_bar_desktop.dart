import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/gaps_system.dart';
import '../svg_icons.dart';
import '../svg_image.dart';

class AppBarDesktop extends StatelessWidget {
  const AppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, right: 70.w, left: 70.w),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgIcons(
                        sizeIconWidth: 16.w,
                        sizeIconHeigth: 16.h,
                        data: 'assets/icons/facebook.svg'),
                    DSGaps.h6,
                    SvgIcons(
                        sizeIconWidth: 16.w,
                        sizeIconHeigth: 16.h,
                        data: 'assets/icons/twitter.svg'),
                    DSGaps.h6,
                    SvgIcons(
                        sizeIconWidth: 16.w,
                        sizeIconHeigth: 16.h,
                        data: 'assets/icons/twitch.svg'),
                    DSGaps.h6,
                    SvgIcons(
                        sizeIconWidth: 16.w,
                        sizeIconHeigth: 16.h,
                        data: 'assets/icons/discord.svg'),
                  ],
                ),
              ),
              Expanded(
                child: SvgImage(
                    sizeImageWidth: 50.w,
                    sizeImageHeigth: 50.h,
                    data: 'assets/icons/logo.svg'),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgIcons(
                        sizeIconWidth: 16.w,
                        sizeIconHeigth: 16.h,
                        data: 'assets/icons/user.svg'),
                    DSGaps.h6,
                    SvgIcons(
                        sizeIconWidth: 16.w,
                        sizeIconHeigth: 16.h,
                        data: 'assets/icons/search.svg'),
                    DSGaps.h6,
                    SvgIcons(
                        sizeIconWidth: 16.w,
                        sizeIconHeigth: 16.h,
                        data: 'assets/icons/list.svg'),
                  ],
                ),
              ),
            ],
          ),
        ),
        DSGaps.v12,
        Divider(
          thickness: 1,
          color: Colors.grey.shade300,
        )
      ],
    );
  }
}
