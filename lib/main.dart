import 'package:flutter/material.dart';

import 'package:met_market/feature/splash_screen/presentation/view/splash_screen.dart';

import 'core/utils/app_color.dart';

void main() {
  runApp(const MetMarket());
}

class MetMarket extends StatelessWidget {
  const MetMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Met Market',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.kprimary),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
