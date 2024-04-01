import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.icon, required this.hintText, this.onChanged});
  final IconData icon;
  final String hintText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: AppColor.kprimary,
            ),
            hintText: hintText,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
      ),
    );
  }
}
