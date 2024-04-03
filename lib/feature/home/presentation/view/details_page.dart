import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';
import 'package:met_market/core/widget/app_bar_details_page.dart';
import 'package:met_market/core/widget/custom_small_btn.dart';

import 'widget/widget_details_pages/nutrition_list.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailsAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/stropary.png',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 4,
                        ),
                      ),
                    ),
                    const Text(
                      'Grapes',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Grapes will provide natural nutrients. Grapes will provide natural nutrients.Grapes will provide natural nutrients.Grapes will provide natural nutrients.The  Chemical in organic grapes which can be healthier hair and skin. It can be improve Your heart health. Protect your body from Cancer.',
                        maxLines: 5,
                        style: TextStyle(
                            fontSize: 11, color: AppColor.kFontSecondary),
                      ),
                    ),
                    const Text(
                      'Nutrition',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const NutritionList()
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            // color: Colors.amber,
            width: double.infinity,
            height: double.infinity,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'S' ' 300 Per/ kg',
                  style: TextStyle(
                      color: Color(0xff393939),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                CustomSmallButton()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
