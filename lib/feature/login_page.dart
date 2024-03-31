import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:met_market/core/utils/app_color.dart';

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
              CustomTextField(
                hintText: 'Enter Your Email',
                icon: Icons.email,
              ),
              CustomTextField(
                hintText: 'Enter Your password',
                icon: Icons.lock,
              ),
              Container(
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 6.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.kprimary),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.icon, required this.hintText, this.onChanged});
  final IconData icon;
  final String hintText;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: AppColor.kprimary,
            ),
            hintText: hintText,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
      ),
    );
  }
}
