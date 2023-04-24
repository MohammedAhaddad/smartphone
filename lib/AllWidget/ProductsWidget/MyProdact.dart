import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProdact extends StatelessWidget {
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
          onPressed: () {},
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 7,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://citysport.ps/media/catalog/product/cache/af817b51d24a4a22fa62a69e4e99aaf1/c/b/cb8659a8-26fa-41aa-a9f5-82986a14bcc0.jpeg",
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Fjallraven - Fold...",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Men's Clothing",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("109.95\$",
                            style: GoogleFonts.getFont("Raleway",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Icon(Icons.star, color: Colors.yellow),
                        Text("3.9",
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
