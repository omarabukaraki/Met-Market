import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';
import 'package:met_market/core/widget/rating_component.dart';

class MyOrdersComponent extends StatelessWidget {
  const MyOrdersComponent({
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
                          'assets/images/onione.png',
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Onion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                    const RatingComponent(size: 20),
                    const Text(
                      'Rate this Product',
                      style: TextStyle(
                          color: AppColor.kFontSecondary,
                          fontSize: 10,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 120,
                    ),
                    const Text(
                      'Delivered on 24 Feb 2021.',
                      style: TextStyle(fontSize: 13, height: 1),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              )
            ],
          )
        ],
      ),
    );
  }
}
