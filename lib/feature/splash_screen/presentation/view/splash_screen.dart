import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_assets.dart';
import 'package:met_market/core/utils/app_color.dart';
import '../../../on_bording_screen/presentation/view/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return const OnBoarding();
          },
        ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kprimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Met Market',
              style: TextStyle(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              AppAssets.splashImage,
              width: double.infinity,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
