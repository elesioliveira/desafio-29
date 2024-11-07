import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_typography.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key, this.sizeFont});
  final double? sizeFont;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 70.w, right: 70.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextApp(
            data: 'INICIO',
            sizeFont: sizeFont ?? 3.sp,
            fontWeight: FontWeight.bold,
          ),
          TextApp(
            data: 'CATEGORIAS',
            sizeFont: sizeFont ?? 3.sp,
            fontWeight: FontWeight.bold,
          ),
          TextApp(
            data: 'SOBRE',
            sizeFont: sizeFont ?? 3.sp,
            fontWeight: FontWeight.bold,
          ),
          TextApp(
            data: 'CONTATO',
            sizeFont: sizeFont ?? 3.sp,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
