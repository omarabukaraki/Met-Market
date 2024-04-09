import 'package:flutter/material.dart';
import 'package:met_market/feature/notification/presentation/view/notification_page.dart';
import '../utils/app_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kprimary,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 16, vertical: MediaQuery.of(context).size.height / 50),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Met Market',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const NotificationPage();
                  },
                ));
              },
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
