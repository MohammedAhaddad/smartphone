import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smartphone/AllWidget/ProductsWidget/MyProdact.dart';
import 'package:smartphone/ProviderFile/dioProviderProdct.dart';

class prodactWidget extends StatelessWidget {
  const prodactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer<dioProviderProdct>(
      builder: (context, provider, child) {
        return Scaffold(
            appBar: AppBar(
              surfaceTintColor: Colors.deepOrangeAccent,
              backgroundColor: Colors.deepOrangeAccent,
              title: Center(
                child: Text("Products",
                    style: GoogleFonts.getFont("Raleway",
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            body: Container(
                color: Color.fromARGB(255, 247, 191, 165),
                child: provider.prodact.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return MyProdact(
                            title: provider.prodact![index].title,
                            category: provider.prodact![index].category,
                            prais: provider.prodact![index].price,
                            rate: provider.prodact![index].rating!.rate ?? 0,
                            imag: provider.prodact![index].image,
                          );
                        })));
      },
    ));
  }
}
