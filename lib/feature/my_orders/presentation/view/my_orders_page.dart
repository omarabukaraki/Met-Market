import 'package:flutter/material.dart';
import 'package:met_market/core/widget/app_bar_details_page.dart';

import 'widget/my_orders_component.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});
  static const String id = 'MyOrdersPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailsAppBar(
        text: 'My Orders',
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const MyOrdersComponent();
        },
      ),
    );
  }
}
