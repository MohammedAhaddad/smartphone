import 'package:flutter/material.dart';
import 'package:smartphone/AllWidget/Cart/Cart.dart';
import 'package:smartphone/AllWidget/CategoriesWidget/CategoriesWidgetMane.dart';
import 'package:smartphone/AllWidget/ProductsWidget/prodact.dart';

import 'package:smartphone/Profile/ProfileWidget.dart';
import 'package:smartphone/homeWidget/homeScreen.dart';

class MainScreenWedget extends StatefulWidget {
  MainScreenWedget({Key? key}) : super(key: key);

  @override
  State<MainScreenWedget> createState() => _MainScreenWedgetState();
}

class _MainScreenWedgetState extends State<MainScreenWedget> {
  int _index = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 32,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.grey,
          currentIndex: _index,
          onTap: (value) {
            pageController.jumpToPage(value);
            _index = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.view_in_ar), label: "."),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "."),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: ".")
          ]),
      body: PageView(
          onPageChanged: (value) {
            _index = value;
            setState(() {});
          },
          controller: pageController,
          children: [
            homeScreen(),
            CategoriesWidgetMane(),
            prodactWidget(),
            CartWidgetMane(),
            ProfileWidget()
          ]),
    );
  }
}
