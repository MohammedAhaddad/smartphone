import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/AllWidget/ProductsWidget/selectProdactWidget.dart';
import 'package:smartphone/AllWidget/router/router.dart';
import 'package:smartphone/Moodle/ProdactMoodle.dart';
import 'package:smartphone/ProviderFile/dioProviderProdct.dart';

class MyProdact extends StatelessWidget {
  String? title;
  String? category;
  num? prais;
  num? rate;
  String? imag;
  MyProdact({
    required title,
    required category,
    required prais,
    required rate,
    required imag,
  }) {
    this.imag = imag;
    this.prais = prais;
    this.title = title;
    this.category = category;
    this.rate = rate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: Get.height / 50,
          left: Get.width / 50,
          right: Get.width / 50,
          bottom: Get.height / 100),
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              backgroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: () {
            // AppRouter.navigateToWidget(SelectProdactWidget(prodact!));
          },
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                  child: CachedNetworkImage(
                    imageUrl: imag ?? "",
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(title!.substring(0, 15) + "...",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(category ?? "",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$prais\$",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Icon(Icons.star, color: Colors.yellow),
                        Text(rate.toString(),
                            style: GoogleFonts.getFont("Roboto",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepOrangeAccent)),
                        onPressed: () {},
                        child: Text("Buy Now",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)))
                  ],
                )
              ])),
    );
  }
}
