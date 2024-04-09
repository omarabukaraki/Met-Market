import 'package:flutter/material.dart';
import 'package:met_market/core/widget/app_bar_details_page.dart';

import 'widget/notification_component.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DetailsAppBar(
          text: 'Notification',
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return const NotificationComponent();
          },
        ));
  }
}
