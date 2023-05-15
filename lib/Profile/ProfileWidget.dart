import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartphone/AllWidget/AuthenticationWidget/SignIn.dart';
import 'package:smartphone/AllWidget/Widget/MyButton.dart';
import 'package:smartphone/AllWidget/router/router.dart';
import 'package:smartphone/ApiFileRoute/Sp_helper.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 0,
        title: Center(
          child: Text("Profile",
              style: GoogleFonts.getFont("Raleway",
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        height: Get.height,
        width: Get.width,
        child: ListView(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Stack(
                alignment: AlignmentDirectional.center,
                fit: StackFit.passthrough,
                children: [
                  Image.asset("assets/profile1.png"),
                  Container(
                      margin: EdgeInsets.only(bottom: Get.height / 12),
                      child: Image.asset("assets/profile2.png")),
                ],
              ),
              SizedBox(
                height: Get.height / 10,
              ),
              Text("Mohammed Alhaddad",
                  style: GoogleFonts.getFont("Raleway",
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700)),
              Text("example@gmail.com",
                  style: GoogleFonts.getFont("Raleway",
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: Get.height / 8,
              ),
              DefultBigButton(
                text: "Log out",
                ontab: () {
                  Sp_helper.sp_helper.deletTokin();

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
          ],
        ),
      ),
    ));
  }
}
