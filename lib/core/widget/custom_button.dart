import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / 6.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: AppColor.kprimary),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
