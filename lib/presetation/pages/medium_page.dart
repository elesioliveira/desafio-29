import 'package:desafio_vinte_nove/core/utils/gaps_system.dart';
import 'package:desafio_vinte_nove/presetation/widgets/templates/categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/app_colors.dart';
import '../widgets/image_app.dart';
import '../widgets/load_more_widget.dart';
import '../widgets/templates/app_bar_widget.dart';
import '../widgets/templates/bottom_widget.dart';

class MediumPage extends StatelessWidget {
  const MediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.dark30,
        appBar: AppBar(
            backgroundColor: AppColors.dark30,
            toolbarHeight: 100,
            flexibleSpace: const AppBarWidget()),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: Column(
              children: [
                CategoriesWidget(
                  sizeFont: 6.sp,
                ),
                DSGaps.v24,
                ImageAppPng(
                  sizeWidth: sizeScreenWidth,
                  sizeHeight: 370.h,
                  data: 'assets/images/1.png',
                  fit: BoxFit.fitWidth,
                  date: '19 de outubro, 2023',
                  description:
                      'Xbox: consoles ganham nova atualização com novos recursos',
                  sizeTextDescritpion: sizeScreenWidth * 0.5,
                ),
                DSGaps.v24,
                ImageAppPng(
                  sizeWidth: sizeScreenWidth,
                  sizeHeight: 370.h,
                  data: 'assets/images/2.png',
                  fit: BoxFit.fitWidth,
                  date: '4 de outubro, 2023',
                  description: 'Cyberpunk ganha novo jogo',
                  sizeTextDescritpion: sizeScreenWidth * 0.5,
                ),
                DSGaps.v24,
                ImageAppPng(
                  sizeWidth: sizeScreenWidth,
                  sizeHeight: 370.h,
                  data: 'assets/images/3.png',
                  fit: BoxFit.fitWidth,
                  date: '27 de setembro, 2023',
                  description: 'Coringa pode aparecer em Multiversos em breve',
                  sizeTextDescritpion: sizeScreenWidth * 0.5,
                ),
                DSGaps.v24,
                ImageAppPng(
                  sizeWidth: sizeScreenWidth,
                  sizeHeight: 370.h,
                  data: 'assets/images/4.png',
                  fit: BoxFit.cover,
                  date: '27 de setembro, 2023',
                  description:
                      'EA Games confirma novo jogo e janela de lançamentos',
                  sizeTextDescritpion: sizeScreenWidth * 0.5,
                ),
                DSGaps.v24,
                const LoadMoreWidget(),
                DSGaps.v24,
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomWidget(
          spacingLeft: 15.w,
          spacingRigth: 15.w,
          sizeFont: 5.sp,
        ),
      ),
    );
  }
}