import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartphone/AllWidget/ProductsWidget/MyProdact.dart';
import 'package:smartphone/AllWidget/Widget/MyButton.dart';
import 'package:smartphone/homeWidget/CatogaryMane.dart';
import 'package:smartphone/homeWidget/homeProdact.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.deepOrangeAccent,
          backgroundColor: Colors.deepOrangeAccent,
          title: Center(
            child: Text("Home",
                style: GoogleFonts.getFont("Raleway",
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 247, 191, 165),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: Get.height / 10,
                        ),
                        SizedBox(
                          width: Get.width / 30,
                        ),
                        Text("Catagories",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          width: Get.width / 2.1,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("See all",
                                style: GoogleFonts.getFont("Raleway",
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                    SizedBox(
                      height: Get.height / 700,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CatogaryMane("Eloctronics"),
                        CatogaryMane("Jewelery"),
                        CatogaryMane("Mon's Clothing"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: Get.height / 10.7,
                        ),
                        SizedBox(
                          width: Get.width / 30,
                        ),
                        Text("Top Products",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          width: Get.width / 2.5,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("See all",
                                style: GoogleFonts.getFont("Raleway",
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                    Container(
                      child: ListView.builder(
                          itemCount: 20,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return homeProdact();
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
