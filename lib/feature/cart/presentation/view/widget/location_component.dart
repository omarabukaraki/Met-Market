import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class LocationComponent extends StatelessWidget {
  const LocationComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 14,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.location_on_sharp,
                  size: 16,
                  color: AppColor.kFontSecondary,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '440001  Nagpur ,Maharashtra',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
            Text(
              'Change Address',
              style: TextStyle(color: Color(0xff7089F0), fontSize: 9),
            )
          ],
        ),
      ),
    );
  }
}
