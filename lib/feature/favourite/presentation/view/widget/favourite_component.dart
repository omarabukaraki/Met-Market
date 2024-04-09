import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';
import 'package:met_market/core/widget/custom_size_btn.dart';
import 'package:met_market/core/widget/rating_component.dart';
import 'package:met_market/feature/cart/presentation/view/widget/counter_btn.dart';

class FavoritesComponent extends StatelessWidget {
  const FavoritesComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 6.5,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: AppColor.kFontSecondary, width: 0.2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height / 7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/prokly.png',
                        ),
                        fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Broccoli',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Pick up from organic farms',
                    style: TextStyle(
                        color: AppColor.kFontSecondary,
                        fontSize: 10,
                        height: 1),
                  ),
                  const RatingComponent(),
                  Row(
                    children: [
                      const CounterButton(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 24,
                      ),
                      const Text('1'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 24,
                      ),
                      const CounterButton(sign: '+')
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '150 Per/ kg',
                style: TextStyle(
                    color: AppColor.kFontPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 11),
              ),
              CustomSizeButton(
                label: 'Add',
                style: TextStyle(color: Colors.white, fontSize: 12),
                width: 5.5,
                height: 12,
                color: AppColor.kBtn,
                radius: 6,
              ),
            ],
          )
        ],
      ),
    );
  }
}
