import 'package:flutter/material.dart';
import 'package:met_market/core/widget/app_bar_details_page.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  static const String id = 'HelpPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DetailsAppBar(
        text: 'Help',
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. '),
      ),
    );
  }
}
