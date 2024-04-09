import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class MyAccountComponent extends StatelessWidget {
  const MyAccountComponent({super.key, this.icon, this.label});
  final IconData? icon;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 12,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Color.fromARGB(255, 235, 235, 235), width: 2),
      )),
      child: Row(
        children: [
          Icon(
            icon ?? Icons.store,
            color: AppColor.kprimary,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(label ?? 'My Orders'),
          )
        ],
      ),
    );
  }
}
