import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class MyAccountHeader extends StatelessWidget {
  const MyAccountHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.5,
        color: AppColor.kprimary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.edit_square,
                  color: Colors.transparent,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white)),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: MediaQuery.of(context).size.width / 4.2,
                    height: MediaQuery.of(context).size.width / 4.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'assets/images/vag.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Icon(
                  Icons.edit_square,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 85,
            ),
            const Text(
              'Manish Chutake',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 120,
            ),
            const Text(
              'manishuxuid@gmail.com',
              style: TextStyle(height: 1, color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
