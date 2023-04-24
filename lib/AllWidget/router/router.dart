import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static Future<String?> navigateToWidget(Widget widget) async {
    String x = await Navigator.of(navKey.currentContext!)
        .push(MaterialPageRoute(builder: ((context) {
      return widget;
    })));
    return x;
  }

  static navigateWithReplacemtnToWidget(Widget widget) async {
    Navigator.of(navKey.currentContext!)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  static popRoute() {
    Navigator.of(navKey.currentContext!).pop();
  }
}
