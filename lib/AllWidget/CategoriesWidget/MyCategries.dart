import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategries extends StatelessWidget {
  String name;
  MyCategries(this.name);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          height: Get.height / 5,
          width: Get.width / 2.7,
          child: Text(name,
              style: GoogleFonts.getFont("Raleway",
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    ]);
  }
}
