import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

import 'cover_image_component.dart';

class ItemCategoryList extends StatelessWidget {
  const ItemCategoryList({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Organic Fruits' + '   ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '(20% Off)',
                style: TextStyle(
                    color: AppColor.kprimary, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            'Pick up from organic farms',
            style: TextStyle(fontSize: 11),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
              height: MediaQuery.of(context).size.width / 1.9,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CoverItemComponent(
                    image: image,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
