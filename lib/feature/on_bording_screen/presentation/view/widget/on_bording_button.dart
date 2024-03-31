import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key, this.onTap, required this.label});
  final VoidCallback? onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.width / 9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: AppColor.kprimary),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
