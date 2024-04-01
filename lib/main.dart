import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:met_market/feature/splash_screen/presentation/view/splash_screen.dart';

import 'core/utils/app_color.dart';

void main() {
  runApp(const MetMarket()
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => const MetMarket(), // Wrap your app
      // ),
      );
}

class MetMarket extends StatelessWidget {
  const MetMarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Met Market',
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.kprimary),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
