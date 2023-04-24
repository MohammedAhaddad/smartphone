import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartphone/AllWidget/AuthenticationWidget/SignIn.dart';
import 'package:smartphone/AllWidget/Widget/MyButton.dart';
import 'package:smartphone/AllWidget/router/router.dart';

class SplachScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.deepOrangeAccent,
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50 //Radius.circular(50.0),
          ,
          child: Image.asset("assets/Vector.png"),
        ),
        SizedBox(
          height: Get.height / 40,
        ),
        const Text(
          "Shopping App",
          style: TextStyle(
              fontSize: 37, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: Get.height / 4,
        ),
        DefultBigButton(
          text: "Get started",
          ontab: () {
            AppRouter.navigateWithReplacemtnToWidget(SignIn());
          },
          fontcolor: Colors.deepOrangeAccent,
          backGroundColor: Colors.white,
          width: 2,
          fontWeight: FontWeight.bold,
          radis: 15,
          fontSize: 20,
        )
      ]),
    ));
  }
}
