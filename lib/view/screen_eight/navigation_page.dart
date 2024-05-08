import 'package:e_commerce/view/navigation_screen/card_screen.dart';
import 'package:e_commerce/view/navigation_screen/home_screen.dart';
import 'package:e_commerce/view/navigation_screen/product_screen.dart';
import 'package:e_commerce/view/navigation_screen/shoped_screen.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final List pages = [
    const HomePage(),
    const CardPage(),
    const ShopedPage(),
    const ProductPage()
  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xFF9775FA),
        unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Heart"),
            BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          ]),
      body: pages[_currentIndex],

      
    );
  }
}
