import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({super.key});

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
                          'assets/images/mashrom.png',
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
                      'Buy 1kg Get 200gm Free',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                    const Text(
                      'Buy 1 Get 1 Free for small sizes Until Feb 27,2021 .',
                      style: TextStyle(
                          color: AppColor.kFontSecondary,
                          fontSize: 12,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 120,
                    ),
                    const Text(
                      'Few minutes ago',
                      style: TextStyle(fontSize: 13, height: 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Image.asset('assets/images/doted.png')],
          )
        ],
      ),
    );
  }
}
