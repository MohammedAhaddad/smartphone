import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CatogaryMane extends StatelessWidget {
  String? catogryName;
  CatogaryMane(CatogryName) {
    this.catogryName = CatogryName;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width / 3.2,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {},
            child: Center(
                child: Text(catogryName ?? "",
                    style: GoogleFonts.getFont("Raleway",
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w600))),
          ),
        ),
      ],
    );
  }
}
