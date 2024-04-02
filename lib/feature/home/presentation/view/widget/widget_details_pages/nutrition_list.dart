import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class NutritionList extends StatefulWidget {
  const NutritionList({
    super.key,
  });

  @override
  State<NutritionList> createState() => _NutritionListState();
}

class _NutritionListState extends State<NutritionList> {
  List<String> nutrition = [
    'Fiber',
    'Potassium',
    'Iron',
    'Magnesium',
    'Vitamin C',
    'Vitamin K',
    'Zinc',
    'Phosphorous'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: nutrition.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            children: [
              const Icon(
                Icons.circle,
                size: 10,
                color: AppColor.kFontSecondary,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(nutrition[index])
            ],
          ),
        );
      },
    );
  }
}
