import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/AllWidget/CategoriesWidget/MyCategries.dart';
import 'package:smartphone/ProviderFile/dioProviderProdct.dart';

class CategoriesWidgetMane extends StatelessWidget {
  const CategoriesWidgetMane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<dioProviderProdct>(builder: (context, provider, child) {
      return Scaffold(
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
                  child: provider.catogey.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: provider.catogey.length,
                          itemBuilder: (context, index) {
                            return MyCategries(provider.catogey[index]
                                    .toString()[0]
                                    .toUpperCase() +
                                provider.catogey[index]
                                    .toString()
                                    .substring(1));
                          },
                        ),
                ),
              ],
            )),
      );
    }));
  }
}
