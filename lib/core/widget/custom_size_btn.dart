import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class CustomSizeButton extends StatelessWidget {
  const CustomSizeButton(
      {super.key,
      required this.width,
      required this.height,
      this.radius,
      this.color,
      this.label,
      this.style});
  final double width;
  final double height;
  final double? radius;
  final Color? color;
  final String? label;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / width,
      height: MediaQuery.of(context).size.width / height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          color: color ?? AppColor.kprimary),
      child: Center(
        child: Text(
          label ?? 'label',
          style: style,
        ),
      ),
    );
  }
}
