import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:met_market/feature/cart/presentation/view/cart_page.dart';
import 'package:met_market/feature/favourite/presentation/view/favourite_page.dart';
import 'package:met_market/feature/my_orders/presentation/view/my_orders_page.dart';

import 'package:met_market/feature/splash_screen/presentation/view/splash_screen.dart';
import 'package:met_market/help_page.dart';

import 'core/utils/app_color.dart';

void main() {
  runApp(
    // const MetMarket()
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MetMarket(),
    ),
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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColor.kprimary, background: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        HelpPage.id: (context) => const HelpPage(),
        FavouritePage.id: (context) => const FavouritePage(),
        CartPage.id: (context) => const CartPage(),
        MyOrdersPage.id: (context) => const MyOrdersPage()
      },
      home: const SplashScreen(),
    );
  }
}
