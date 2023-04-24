import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartphone/AllWidget/ProductsWidget/MyProdact.dart';

class prodactWidget extends StatelessWidget {
  const prodactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
          child: Text("Products",
              style: GoogleFonts.getFont("Raleway",
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
      ),
      body: Container(
          color: Color.fromARGB(255, 247, 191, 165),
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 20,
              itemBuilder: (context, index) {
                return MyProdact();
              })),
    ));
  }
}
