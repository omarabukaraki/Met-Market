import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';
import 'package:met_market/core/widget/custom_app_bar.dart';
import 'package:met_market/core/widget/custom_search_bar.dart';
import 'widget/category_button.dart';
import 'widget/item_category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kprimary,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Stack(
                  alignment: Alignment(0, 2.5),
                  children: [
                    CustomAppBar(),
                    CustomSearchBar(),
                  ],
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height / 16) * 0.5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryButton(
                        categoryName: 'Vegetables',
                      ),
                      CategoryButton(
                        isSelect: true,
                        categoryName: 'Fruits',
                      ),
                      CategoryButton(
                        categoryName: 'Dry Fruits',
                      ),
                    ],
                  ),
                ),
                const ItemCategoryList(),
                const ItemCategoryList(image: 'assets/images/prokly.png'),
                const ItemCategoryList(image: 'assets/images/vag.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
