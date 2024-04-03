import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({super.key, this.onTap, this.label});
  final String? label;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColor.kprimary),
        child: Center(
            child: Text(
          label ?? 'Buy Now',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        )),
      ),
    );
  }
}
