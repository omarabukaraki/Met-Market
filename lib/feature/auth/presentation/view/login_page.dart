import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';
import 'package:met_market/core/widget/custom_button.dart';
import 'package:met_market/core/widget/custom_text_field.dart';

import '../../../home/presentation/view/navigation_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 6,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.width / 1.5,
                  child: Image.asset('assets/images/marketLogo.png')),
              const Text(
                'Met Market',
                style: TextStyle(
                    color: AppColor.kprimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    height: 1),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 9,
              ),
              const CustomTextField(
                hintText: 'Enter Your Email',
                icon: Icons.email,
              ),
              const CustomTextField(
                hintText: 'Enter Your password',
                icon: Icons.lock,
              ),
              CustomButton(onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const NavigationPage();
                  },
                ));
              }),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Forget your password ?',
                  style: TextStyle(color: AppColor.kFontSecondary),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You don't have an account?",
                        style: TextStyle(color: AppColor.kFontSecondary)),
                    Text(
                      " Create account",
                      style: TextStyle(color: AppColor.kprimary),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
