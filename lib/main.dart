import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/AllWidget/Widget/SplachScreen.dart';

import 'package:smartphone/AllWidget/router/router.dart';
import 'package:smartphone/ApiFileRoute/Sp_helper.dart';
import 'package:smartphone/ProviderFile/dioProvider.dart';
import 'package:smartphone/ProviderFile/dioProviderProdct.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Sp_helper.sp_helper.getInit();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<dioProvider>(create: (context) => dioProvider()),
      ChangeNotifierProvider<dioProviderProdct>(
          create: ((context) => dioProviderProdct()))
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // Route<dynamic> generateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case "homeScreen":
  //       return MaterialPageRoute(builder: (context) => homeScreen());
  //     case "CategoriesWidgetMane":
  //       return MaterialPageRoute(
  //           builder: (context) => const CategoriesWidgetMane());
  //     case "prodactWidget":
  //       return MaterialPageRoute(builder: (context) => const prodactWidget());
  //     case "ProfileWidget":
  //       return MaterialPageRoute(builder: (context) => const ProfileWidget());
  //     case "CartWidgetMane":
  //       return MaterialPageRoute(builder: (context) => const CartWidgetMane());
  //     default:
  //       return MaterialPageRoute(builder: (context) => homeScreen());
  //   }
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: AppRouter.navKey,

      // onGenerateRoute: generateRoute,
      home: SplachScreen(),
    );
  }
}
