import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartphone/AllWidget/CategoriesWidget/MyCategries.dart';

class CategoriesWidgetMane extends StatelessWidget {
  const CategoriesWidgetMane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
          child: Text("Categories",
              style: GoogleFonts.getFont("Raleway",
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
        ),
      ),
      body: Container(
          color: Color.fromARGB(255, 247, 191, 165),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MyCategries();
                  },
                ),
              ),
            ],
          )),
    ));
  }
}
