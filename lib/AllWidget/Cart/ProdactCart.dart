import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdactCart extends StatelessWidget {
  const ProdactCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: Get.height / 50,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            onPressed: () {},
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: Get.width / 1.15,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            "https://citysport.ps/media/catalog/product/cache/af817b51d24a4a22fa62a69e4e99aaf1/c/b/cb8659a8-26fa-41aa-a9f5-82986a14bcc0.jpeg",
                        width: Get.width / 5,
                        height: MediaQuery.of(context).size.height / 8,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fjallraven - Foldsack...",
                              style: GoogleFonts.getFont("Raleway",
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                          Row(
                            children: [
                              Text("Men's Clothing",
                                  style: GoogleFonts.getFont("Raleway",
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                width: Get.width / 3.1,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cancel),
                            color: Colors.deepOrangeAccent,
                            splashColor: Colors.deepOrangeAccent,
                          ),
                          Text("109.95\$",
                              style: GoogleFonts.getFont("Raleway",
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: Get.height / 24,
                    width: Get.width / 2.2,
                    color: Colors.orange,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepOrangeAccent)),
                              onPressed: () {},
                              child: Text("-",
                                  style: GoogleFonts.getFont("Raleway",
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("5",
                                  style: GoogleFonts.getFont("Raleway",
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                            ],
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepOrangeAccent)),
                              onPressed: () {},
                              child: Text("+",
                                  style: GoogleFonts.getFont("Raleway",
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)))
                        ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
