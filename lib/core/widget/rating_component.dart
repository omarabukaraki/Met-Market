import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class RatingComponent extends StatelessWidget {
  const RatingComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          size: 14,
          color: Colors.orange,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 14,
          color: Colors.orange,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 14,
          color: Colors.orange,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 14,
          color: Colors.orange,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: 14,
          color: AppColor.kFontSecondary,
        ),
      ],
    );
  }
}
