import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/Moodle/ProdactMoodle.dart';
import 'package:smartphone/ProviderFile/dioProviderProdct.dart';

class SelectProdactWidget extends StatelessWidget {
  Prodact prodact;
  SelectProdactWidget(this.prodact);
  @override
  Widget build(BuildContext context) {
    return Consumer<dioProviderProdct>(
      builder: (context, provider, child) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrangeAccent,
              elevation: 0,
              title: Center(
                child: Text(
                    Provider.of<dioProviderProdct>(context)
                            .selectProdact
                            ?.title ??
                        "Loading...",
                    style: GoogleFonts.getFont("Raleway",
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            body: Container(
              width: Get.width,
              color: Colors.deepOrangeAccent,
              // child: provider.selectProdact == null
              //     ? Center(
              //         child: CircularProgressIndicator(),
              //       )
              //     :
              child: ListView(children: [
                Container(
                  height: Get.height / 5,
                  width: Get.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.only(
                      top: Get.height / 20,
                      left: Get.width / 50,
                      right: Get.width / 50,
                      bottom: Get.height / 100),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 7,
                          child: CachedNetworkImage(
                              // imageUrl: provider.selectProdact!.image ??
                              imageUrl:
                                  "https://m.media-amazon.com/images/I/81PtF30TLUL._UY741_.jpg"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Get.width / 2,
                              child: Row(
                                children: [
                                  Text(
                                      provider.selectProdact?.title!
                                              .substring(0, 15) ??
                                          "",
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
                                Text(provider.selectProdact!.category ?? "",
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
                                Text(
                                    provider.selectProdact?.price.toString() ??
                                        "" + "\$",
                                    style: GoogleFonts.getFont("Raleway",
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                                provider.selectProdact!.rating!.rate
                                        .toString() ??
                                    "",
                                style: GoogleFonts.getFont("Roboto",
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: Get.height / 10),
                  padding: EdgeInsets.all(20),
                  width: Get.width,
                  height: Get.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Prodact Name",
                            style: GoogleFonts.getFont("Roboto",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Text(provider.selectProdact?.title ?? "",
                            style: GoogleFonts.getFont("Roboto",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Text("Prodct Description",
                            style: GoogleFonts.getFont("Roboto",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                        Text(provider.selectProdact?.description ?? "",
                            style: GoogleFonts.getFont("Roboto",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ]),
                )
              ]),
            ));
      },
    );
  }
}
