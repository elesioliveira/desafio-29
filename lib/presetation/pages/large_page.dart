import 'package:desafio_vinte_nove/core/utils/app_colors.dart';
import 'package:desafio_vinte_nove/core/utils/app_typography.dart';
import 'package:desafio_vinte_nove/core/utils/gaps_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/image_app.dart';
import '../widgets/svg_icons.dart';
import '../widgets/templates/app_bar_desktop.dart';
import '../widgets/templates/bottom_widget.dart';
import '../widgets/templates/categories_widget.dart';
import '../widgets/templates/row_with_banners_widget.dart';

class LargePage extends StatefulWidget {
  const LargePage({super.key});

  @override
  State<LargePage> createState() => _LargePageState();
}

class _LargePageState extends State<LargePage> {
  @override
  Widget build(BuildContext context) {
    double sizeScreen = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.dark30,
          appBar: AppBar(
              toolbarHeight: 130,
              backgroundColor: AppColors.dark30,
              flexibleSpace: const AppBarDesktop()),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 70.w, right: 70.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DSGaps.v32,
                  const CategoriesWidget(),
                  DSGaps.v48,
                  const RowWithBannersWidget(),
                  DSGaps.v16,
                  ImageAppPng(
                    data: 'assets/images/4.png',
                    sizeHeight: 300.h,
                    sizeWidth: sizeScreen,
                    fit: BoxFit.cover,
                    sizeTextDescritpion: sizeScreen,
                    date: '30 de agosto, 2023',
                    description:
                        'EA Games confirma novo jogo e janela de lançamento',
                  ),
                  DSGaps.v48,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextApp(
                        data: 'CARREGAR MAIS',
                        fontWeight: FontWeight.bold,
                        sizeFont: 3.sp,
                      ),
                      DSGaps.h2,
                      SvgIcons(
                          sizeIconWidth: 20.w,
                          sizeIconHeigth: 20.h,
                          data: 'assets/icons/arrow.svg')
                    ],
                  ),
                  DSGaps.v48,
                ],
              ),
            ),
          ),
          bottomNavigationBar: const BottomWidget()),
    );
  }
}
