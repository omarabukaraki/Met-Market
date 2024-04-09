import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton(
      {super.key, this.onTap, required this.categoryName, this.isSelect});
  final bool? isSelect;
  final VoidCallback? onTap;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isSelect == true ? AppColor.kBtn : Colors.transparent,
          ),
          child: Text(
            categoryName,
            style: TextStyle(
                color:
                    isSelect == true ? Colors.white : AppColor.kFontSecondary,
                fontWeight: FontWeight.w700),
          )),
    );
  }
}
