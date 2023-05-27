import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartphone/AllWidget/ProductsWidget/selectProdactWidget.dart';
import 'package:smartphone/AllWidget/router/router.dart';

class homeProdact extends StatelessWidget {
  String? title;
  String? category;
  num? prais;
  num? rate;
  String? imag;
  homeProdact(
      {required title,
      required category,
      required prais,
      required rate,
      required imag}) {
    this.category = category;

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
            // AppRouter.navigateToWidget(SelectProdactWidget());
          },
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 7,
                  child: CachedNetworkImage(
                    imageUrl: imag ?? "",
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width / 2,
                      child: Row(
                        children: [
                          Text(title!.substring(0, 15) + "...",
                              style: GoogleFonts.getFont("Raleway",
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(category ?? "",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("$prais\$",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        Text(rate.toString() ?? "",
                            style: GoogleFonts.getFont("Roboto",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.deepOrangeAccent)),
                            onPressed: () {
                              // AppRouter.navigateToWidget(SelectProdactWidget());
                            },
                            child: Text("Buy Now",
                                style: GoogleFonts.getFont("Raleway",
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                  ],
                )
              ])),
    );
  }
}
