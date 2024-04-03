import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import 'counter_btn.dart';

class CustomShoppingCart extends StatelessWidget {
  const CustomShoppingCart({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 7,
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
                    image: DecorationImage(
                        image: AssetImage(
                          image ?? 'assets/images/prokly.png',
                        ),
                        fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Broccoli',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 24,
                      ),
                      const Text(
                        'Rs 40 Saved',
                        style:
                            TextStyle(color: AppColor.kprimary, fontSize: 10),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: const Alignment(0, 0),
                    children: [
                      const Text(
                        'Rs 190',
                        style: TextStyle(
                            color: AppColor.kFontPrimary, fontSize: 12),
                      ),
                      Container(
                        width: 45,
                        height: 1,
                        color: Colors.black38,
                      )
                    ],
                  ),
                  const Text(
                    '150 Per/ kg',
                    style: TextStyle(
                        color: AppColor.kFontPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 26,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.delete_rounded,
                color: AppColor.kFontPrimary,
              ),
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
          )
        ],
      ),
    );
  }
}
