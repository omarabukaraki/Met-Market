import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key, this.sign, this.onTap});
  final String? sign;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 14,
        height: MediaQuery.of(context).size.width / 14,
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.kFontPrimary),
            borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text(sign ?? '-'),
        ),
      ),
    );
  }
}
