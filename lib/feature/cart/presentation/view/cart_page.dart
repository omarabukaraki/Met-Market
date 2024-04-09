import 'package:flutter/material.dart';
import 'package:met_market/core/widget/app_bar_details_page.dart';
import 'package:met_market/core/widget/custom_small_btn.dart';
import 'widget/custom_divider.dart';
import 'widget/custom_shopping_cart.dart';
import 'widget/location_component.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const String id = 'CartPage';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DetailsAppBar(
        text: 'Shopping Cart',
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: CustomSmallButton(
        label: 'Place Order',
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  LocationComponent(),
                  CustomDivider(),
                  CustomShoppingCart(),
                  CustomShoppingCart(image: 'assets/images/onione.png'),
                  CustomDivider(text: 'Dry Fruits'),
                  CustomShoppingCart(image: 'assets/images/mashrom.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
