import 'package:desafio_vinte_nove/presetation/pages/large_page.dart';
import 'package:desafio_vinte_nove/presetation/pages/medium_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'small_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveWidget(),
      ),
    );
  }
}

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    if (screenWidth < 600) {
      return const SmallPage();
    } else if (screenWidth < 1885) {
      return const MediumPage();
    } else {
      return const LargePage();
    }
  }
}
