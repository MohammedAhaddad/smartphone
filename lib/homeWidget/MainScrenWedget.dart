import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/AllWidget/Cart/Cart.dart';
import 'package:smartphone/AllWidget/CategoriesWidget/CategoriesWidgetMane.dart';
import 'package:smartphone/AllWidget/ProductsWidget/prodact.dart';

import 'package:smartphone/Profile/ProfileWidget.dart';
import 'package:smartphone/ProviderFile/dioProviderProdct.dart';
import 'package:smartphone/homeWidget/homeScreen.dart';

class MainScreenWedget extends StatefulWidget {
  MainScreenWedget({Key? key}) : super(key: key);

  @override
  State<MainScreenWedget> createState() => _MainScreenWedgetState();
}

class _MainScreenWedgetState extends State<MainScreenWedget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<dioProviderProdct>(builder: (context, provider, x) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 32,
            selectedItemColor: Colors.deepOrangeAccent,
            unselectedItemColor: Colors.grey,
            currentIndex: provider.index,
            onTap: (value) {
              provider.pageController.jumpToPage(provider.pagRout(value));
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
              provider.pagRout(value);
            },
            controller: provider.pageController,
            children: [
              homeScreen(),
              CategoriesWidgetMane(),
              prodactWidget(),
              CartWidgetMane(),
              ProfileWidget()
            ]),
      );
    });
  }
}
