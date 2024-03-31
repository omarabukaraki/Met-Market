import 'package:flutter/material.dart';
import '../../on_boarding_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<String> images = [
    'assets/images/onboardingOne.png',
    'assets/images/onboardingTwo.png',
    'assets/images/onboardingThree.png'
  ];
  List<String> text = ['E Shopping', 'Delivery on the way', 'Delivery Arrived'];
  List<String> description = [
    'Explore  top organic fruits & grab them',
    'Get your order by speed delivery',
    'Order is arrived at your Place'
  ];

  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return OnBoardingScreen(
            isVisible: index + 1 != images.length ? true : false,
            image: images[index],
            text: text[index],
            description: description[index],
            activeIndex: index,
            count: images.length,
            controller: controller,
          );
        },
      ),
    );
  }
}
