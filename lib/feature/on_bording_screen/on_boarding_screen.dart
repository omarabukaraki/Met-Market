import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/utils/app_color.dart';
import '../login_page.dart';
import 'presentation/view/widget/on_bording_button.dart';
import 'presentation/view/widget/skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen(
      {super.key,
      required this.isVisible,
      required this.image,
      required this.text,
      required this.description,
      required this.activeIndex,
      required this.count,
      required this.controller});
  final bool isVisible;
  final String image;
  final String text;
  final String description;
  final int activeIndex;
  final int count;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // start skip button
        SkipButton(
          isVisible: isVisible,
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const LoginPage();
              },
            ));
          },
        ),

        //start display image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 1.2,
            child: Image.asset(image),
          ),
        ),

        //start display header text
        Text(
          text,
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xff2F2E41)),
        ),

        const SizedBox(height: 20),
        //start display description
        Text(
          description,
          style: const TextStyle(fontSize: 18, color: Color(0xff78787C)),
        ),

        const SizedBox(height: 50),
        //AnimatedSmoothIndicator
        AnimatedSmoothIndicator(
            effect: const ExpandingDotsEffect(
                dotWidth: 10,
                dotHeight: 10,
                dotColor: Color.fromARGB(255, 174, 192, 158),
                activeDotColor: AppColor.kprimary,
                paintStyle: PaintingStyle.stroke),
            activeIndex: activeIndex,
            count: count),

        const SizedBox(height: 50),
        const SizedBox(height: 50),
        //OnBoardingButton
        OnBoardingButton(
          label: activeIndex + 1 != count ? 'Next' : 'Get Started',
          onTap: () async {
            if (activeIndex + 1 != count) {
              await controller.nextPage(
                  duration: const Duration(microseconds: 50),
                  curve: Easing.linear);
            } else {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const LoginPage();
                },
              ));
            }
          },
        )
      ],
    );
  }
}
