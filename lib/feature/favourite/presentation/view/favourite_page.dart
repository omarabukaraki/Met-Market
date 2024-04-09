import 'package:flutter/material.dart';
import 'package:met_market/core/widget/app_bar_details_page.dart';

import 'widget/favourite_component.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailsAppBar(
        text: 'Favourites',
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const FavoritesComponent();
        },
      ),
    );
  }
}
