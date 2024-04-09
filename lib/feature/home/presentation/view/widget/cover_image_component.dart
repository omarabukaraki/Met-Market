import 'package:flutter/material.dart';
import 'package:met_market/core/widget/rating_component.dart';

class CoverItemComponent extends StatelessWidget {
  const CoverItemComponent({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: const Alignment(0.55, -0.9),
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                width: MediaQuery.of(context).size.width / 3.5,
                height: MediaQuery.of(context).size.width / 3,
                child: Image.asset(
                  image ?? 'assets/images/stropary.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width / 3,
                ),
              ),
              CircleAvatar(
                radius: (MediaQuery.of(context).size.width / 3.5) * 0.15,
                backgroundColor: Colors.white,
                child: const Center(
                  child: Icon(
                    Icons.favorite_border_rounded,
                    color: Color(0xffF31559),
                    size: 20,
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: RatingComponent(),
          ),
          const Text(
            'Strawberry',
            style: TextStyle(
                color: Color(0xff393939),
                fontWeight: FontWeight.w600,
                fontSize: 12),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              'S' + ' 300 Per/ kg',
              style: TextStyle(
                  color: Color(0xff393939),
                  fontWeight: FontWeight.w600,
                  fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
