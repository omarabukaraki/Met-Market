import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 16,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 1))
      ], borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            prefixIcon: Icon(
              Icons.search,
              color: AppColor.kFontSecondary,
            ),
            hintText: 'search',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
