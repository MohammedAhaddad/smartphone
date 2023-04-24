import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartphone/AllWidget/AuthenticationWidget/SignIn.dart';
import 'package:smartphone/AllWidget/Widget/MyButton.dart';

import 'package:smartphone/AllWidget/router/router.dart';
import 'package:smartphone/homeWidget/MainScrenWedget.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: ListView(
            children: [
              SizedBox(
                height: Get.height / 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: Get.height / 8),
                    child: Column(children: [
                      Text("Create Account",
                          style: GoogleFonts.getFont("Raleway",
                              color: Colors.deepOrangeAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      Text("Sign up to continue.",
                          style: GoogleFonts.getFont("Raleway",
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    ]),
                  ),
                  Container(
                    width: Get.width / 1.12,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              right: Get.width / 1.5, bottom: 5),
                          child: Text("Username",
                              style: GoogleFonts.getFont("Raleway",
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "mohammed_alhaddad",
                              border: OutlineInputBorder(
                                  //enabledBorder heid the border in kiek
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              right: Get.width / 1.3, bottom: 5, top: 5),
                          child: Text("Email",
                              style: GoogleFonts.getFont("Raleway",
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              hintText: "example@gmail.com",
                              border: OutlineInputBorder(
                                  //enabledBorder heid the border in kiek
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        /////////////////////////
                        Container(
                          margin: EdgeInsets.only(
                              right: Get.width / 1.5, bottom: 5, top: 5),
                          child: Text("Password",
                              style: GoogleFonts.getFont("Raleway",
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_open),
                              hintText: "**************",
                              border: OutlineInputBorder(
                                  //enabledBorder heid the border in kiek
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        /////////////////////
                        Container(
                          margin: EdgeInsets.only(
                              right: Get.width / 1.9, bottom: 5, top: 5),
                          child: Text("Confirm Password",
                              style: GoogleFonts.getFont("Raleway",
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_open),
                              hintText: "**************",
                              border: OutlineInputBorder(
                                  //enabledBorder heid the border in kiek
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Get.height / 30),
                          child: DefultBigButton(
                            text: "Sign Up",
                            ontab: () {
                              AppRouter.navigateWithReplacemtnToWidget(
                                  MainScreenWedget());
                            },
                            backGroundColor: Colors.deepOrangeAccent,
                            width: 1,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontcolor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: Get.height / 15, left: Get.width / 5),
                    child: Row(
                      children: [
                        Text("Already have an account?",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        TextButton(
                            onPressed: () {
                              AppRouter.navigateToWidget(SignIn());
                            },
                            child: Text("Sign In",
                                style: GoogleFonts.getFont("Raleway",
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
