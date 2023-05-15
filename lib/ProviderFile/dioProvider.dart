import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:smartphone/AllWidget/router/router.dart';
import 'package:smartphone/ApiFileRoute/Auth_helper.dart';
import 'package:smartphone/ApiFileRoute/Sp_helper.dart';
import 'package:smartphone/homeWidget/MainScrenWedget.dart';

class dioProvider extends ChangeNotifier {
  GlobalKey<FormState> logingkey = GlobalKey();
  GlobalKey<FormState> singUpkey = GlobalKey();
  TextEditingController userNameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  TextEditingController userNameControlerSingUp = TextEditingController();
  TextEditingController passwordControlerSingUp = TextEditingController();
  TextEditingController emailNameControlerSingUp = TextEditingController();
  TextEditingController passwordControlerConfirmSingUp =
      TextEditingController();
  singIn() async {
    if (logingkey.currentState!.validate()) {
      String token = await AuthHelber.authHelber
          .singIn(userNameControler.text, passwordControler.text);
      log("the token:" + token);
      await Sp_helper.sp_helper.saveToken(token);
      if (Sp_helper.sp_helper.getTokin() != null) {
        AppRouter.navigateWithReplacemtnToWidget(MainScreenWedget());
      }
    }
  }

  signUp() async {
    if (singUpkey.currentState!.validate()) {
      String id = await AuthHelber.authHelber.singUp(
          userNameControlerSingUp.text,
          emailNameControlerSingUp.text,
          passwordControlerConfirmSingUp.text);
      Sp_helper.sp_helper.saveToken(id);
      if (Sp_helper.sp_helper.getTokin() != null) {
        AppRouter.navigateWithReplacemtnToWidget(MainScreenWedget());
      }
    }
  }

  String? nullValiation(String? v) {
    if (v == null || v.isEmpty) {
      return "This field is required";
    }
  }

  String? passwordValiation(String? v) {
    if (v!.length < 6) {
      return "Password must be greater than numbers or letters";
    }
  }
}
