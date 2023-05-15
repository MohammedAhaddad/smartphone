import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/AllWidget/CategoriesWidget/CategoriesWidgetMane.dart';
import 'package:smartphone/AllWidget/ProductsWidget/prodact.dart';
import 'package:smartphone/AllWidget/ProductsWidget/selectProdactWidget.dart';
import 'package:smartphone/AllWidget/router/router.dart';
import 'package:smartphone/ProviderFile/dioProviderProdct.dart';
import 'package:smartphone/homeWidget/CatogaryMane.dart';
import 'package:smartphone/homeWidget/homeProdact.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer<dioProviderProdct>(
      builder: (context, provider, x) {
        return Scaffold(
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
                  child: provider.prodact.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView(
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
                                    onPressed: () {
                                      AppRouter.navigateToWidget(
                                          CategoriesWidgetMane());
                                    },
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
                              children: [
                                SizedBox(
                                    width: Get.width,
                                    height: Get.height / 5,
                                    child: ListView.builder(
                                      itemCount: provider.catogey.length,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          children: [
                                            CatogaryMane(provider.catogey[index]
                                                    .toString()[0]
                                                    .toUpperCase() +
                                                provider.catogey[index]
                                                    .toString()
                                                    .substring(1)),
                                            SizedBox(
                                              width: Get.width / 40,
                                            )
                                          ],
                                        );
                                      },
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: Get.height / 10.7,
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
                                    onPressed: () {
                                      AppRouter.navigateToWidget(
                                          prodactWidget());
                                    },
                                    child: Text("See all",
                                        style: GoogleFonts.getFont("Raleway",
                                            color: Colors.deepOrangeAccent,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600)))
                              ],
                            ),
                            Container(
                              child: ListView.builder(
                                  itemCount:
                                      (provider.prodact!.length / 3).toInt(),
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                        onTap: () {
                                          provider.getOneProdact(
                                              provider.prodact[index].id ?? 1);
                                          AppRouter.navigateToWidget(
                                              SelectProdactWidget());
                                        },
                                        child: homeProdact(
                                          title: provider.prodact[index].title,
                                          category:
                                              provider.prodact[index].category,
                                          prais: provider.prodact[index].price,
                                          rate: provider.prodact[index].rating!
                                                  .rate ??
                                              0,
                                          imag: provider.prodact[index].image,
                                        ));
                                  }),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
