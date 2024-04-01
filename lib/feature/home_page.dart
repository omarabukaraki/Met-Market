import 'package:flutter/material.dart';
import 'package:met_market/core/utils/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.transparent,
        child: SafeArea(
          child: Column(
            children: [
              const Stack(
                alignment: Alignment(0, 2.5),
                children: [
                  CustomAppBar(),
                  CustomSearchBar(),
                ],
              ),
              SizedBox(
                height: (MediaQuery.of(context).size.height / 16) * 0.5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryButton(
                      isSelect: false,
                      categoryName: 'Vegetables',
                    ),
                    CategoryButton(
                      isSelect: true,
                      categoryName: 'Fruits',
                    ),
                    CategoryButton(
                      isSelect: false,
                      categoryName: 'Dry Fruits',
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

class CategoryButton extends StatelessWidget {
  const CategoryButton(
      {super.key, required this.categoryName, required this.isSelect});
  final bool isSelect;

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:
              isSelect == true ? const Color(0xffCC7D00) : Colors.transparent,
        ),
        child: Text(
          categoryName,
          style: TextStyle(
              color: isSelect == true ? Colors.white : AppColor.kFontSecondary,
              fontWeight: FontWeight.w700),
        ));
  }
}

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
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Met Market',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 16,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 1))
      ], borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            prefixIcon: Icon(
              Icons.search,
              color: AppColor.kFontSecondary,
            ),
            hintText: 'search',
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
