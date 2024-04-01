import 'package:flutter/material.dart';
import 'package:met_market/feature/home/presentation/view/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  final pages = const [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: 'Cart', icon: Icon(Icons.shopping_cart_outlined)),
            BottomNavigationBarItem(
                label: 'Favourite', icon: Icon(Icons.favorite_border_rounded)),
            BottomNavigationBarItem(
              label: 'My Account',
              icon: Icon(Icons.person_outline_sharp),
            )
          ]),
    );
  }
}
