import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartphone/AllWidget/Cart/ProdactCart.dart';

class CartWidgetMane extends StatelessWidget {
  const CartWidgetMane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
          child: Text("Cart",
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
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ProdactCart();
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
