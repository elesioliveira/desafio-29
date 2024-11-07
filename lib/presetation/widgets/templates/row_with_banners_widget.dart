import 'package:flutter/material.dart';

import '../image_app.dart';

class RowWithBannersWidget extends StatelessWidget {
  const RowWithBannersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageAppPng(
          data: 'assets/images/1.png',
          fit: BoxFit.fill,
          date: '19 de outubro, 2023',
          description: 'Xbox: consoles ganham atualização com recursos',
        ),
        ImageAppPng(
          data: 'assets/images/2.png',
          fit: BoxFit.contain,
          date: '4 de outubro, 2023',
          description: 'Cyberpunk vai ganhar novo jogo',
        ),
        ImageAppPng(
          data: 'assets/images/3.png',
          date: '27 de setembro , 2023',
          description: 'Coringa pode aparecer em Multiversos em breve',
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
