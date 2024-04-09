import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';
import 'widget/my_account_component.dart';
import 'widget/my_account_header.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  List<Map<String, dynamic>> data = [
    {
      'id': 'MyOrdersPage',
      'label': 'My Orders',
      'icon': Icons.shopping_bag,
    },
    {
      'id': 'FavouritePage',
      'label': 'Favourites',
      'icon': Icons.favorite,
    },
    {
      'id': 'SettingsPage',
      'label': 'Settings',
      'icon': Icons.settings,
    },
    {
      'id': 'CartPage',
      'label': 'My Cart',
      'icon': Icons.shopping_cart,
    },
    {
      'id': 'RatePage',
      'label': 'Rate us',
      'icon': Icons.star_half_rounded,
    },
    {
      'id': 'ReferFriend',
      'label': 'Refer a Friend',
      'icon': Icons.share,
    },
    {
      'id': 'HelpPage',
      'label': 'Help',
      'icon': Icons.help,
    },
    {
      'id': 'LogOutPage',
      'label': 'Log Out',
      'icon': Icons.logout,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kprimary,
      child: SafeArea(
        child: Scaffold(
            body: CustomScrollView(
          slivers: [
            const MyAccountHeader(),
            SliverList.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, data[index]['id']);
                  },
                  child: MyAccountComponent(
                    label: data[index]['label'],
                    icon: data[index]['icon'],
                  ),
                );
              },
            )
          ],
        )),
      ),
    );
  }
}
