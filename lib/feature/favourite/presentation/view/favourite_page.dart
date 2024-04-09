import 'package:flutter/material.dart';
import 'package:met_market/core/widget/app_bar_details_page.dart';

import 'widget/favourite_component.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});
  static const String id = 'FavouritePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailsAppBar(
        text: 'Favourites',
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const FavoritesComponent();
        },
      ),
    );
  }
}
