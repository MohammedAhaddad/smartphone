import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/AllWidget/AuthenticationWidget/SignUp.dart';
import 'package:smartphone/AllWidget/Widget/MyButton.dart';

import 'package:smartphone/AllWidget/router/router.dart';
import 'package:smartphone/ProviderFile/dioProvider.dart';
import 'package:smartphone/homeWidget/MainScrenWedget.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<dioProvider>(
          builder: (context, provider, x) {
            return Container(
                alignment: Alignment.center,
                child: ListView(
                  children: [
                    SizedBox(
                      height: Get.height / 7,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: Get.height / 8),
                          child: Column(children: [
                            Text("Welcome Back!",
                                style: GoogleFonts.getFont("Raleway",
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            Text("Sign in to continue.",
                                style: GoogleFonts.getFont("Raleway",
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                          ]),
                        ),
                        Container(
                            width: Get.width / 1.12,
                            child: Form(
                              key: provider.logingkey,
                              child: Column(
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
                                    controller: provider.userNameControler,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        hintText: "mohammed_alhaddad",
                                        border: OutlineInputBorder(
                                            //enabledBorder heid the border in kiek
                                            borderSide: BorderSide(
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        right: Get.width / 1.5,
                                        bottom: 5,
                                        top: 5),
                                    child: Text("Password",
                                        style: GoogleFonts.getFont("Raleway",
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    controller: provider.passwordControler,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.lock_open),
                                        hintText: "**************",
                                        border: OutlineInputBorder(
                                            //enabledBorder heid the border in kiek
                                            borderSide: BorderSide(
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: Get.height / 30),
                                    child: DefultBigButton(
                                      text: "Sign In",
                                      ontab: () {
                                        late BuildContext dialogContext;
                                        showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (context) {
                                              dialogContext = context;
                                              return Dialog(
                                                child: SizedBox(
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(10),
                                                        child: Row(
                                                          children: [
                                                            CircularProgressIndicator(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  Get.height /
                                                                      15,
                                                              width: Get.width /
                                                                  10,
                                                            ),
                                                            Text("Signing in")
                                                          ],
                                                        ))),
                                              );
                                            });
                                        provider.singIn();
                                        Navigator.of(dialogContext).pop();
                                        Navigator.of(context).pop();
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
                            )),
                        Container(
                          margin: EdgeInsets.only(
                              top: Get.height / 10, left: Get.width / 5),
                          child: Row(
                            children: [
                              Text("Don’t have an account?",
                                  style: GoogleFonts.getFont("Raleway",
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              TextButton(
                                  onPressed: () {
                                    AppRouter.navigateToWidget(SignUp());
                                  },
                                  child: Text("Sign Up",
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
                ));
          },
        ),
      ),
    );
  }
}
