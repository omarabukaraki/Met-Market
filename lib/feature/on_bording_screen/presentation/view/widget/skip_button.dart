import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, this.onTap, required this.isVisible});
  final VoidCallback? onTap;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Text(
              isVisible ? 'Skip' : '',
              style: const TextStyle(fontSize: 14, color: Color(0xff78787C)),
            ),
          )
        ],
      ),
    );
  }
}
