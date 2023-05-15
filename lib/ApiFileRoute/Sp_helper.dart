import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

class Sp_helper {
  SharedPreferences? sp;
  Sp_helper._();
  static Sp_helper sp_helper = Sp_helper._();
  getInit() async {
    sp = await SharedPreferences.getInstance();
  }

  saveToken(String token) {
    sp!.setString("token", token);
  }

  String? getTokin() {
    return sp!.getString("token");
  }

  deletTokin() {
    sp!.clear();
    print("delet tokin done");
  }
}
