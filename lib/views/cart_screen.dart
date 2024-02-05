import 'package:flutter/material.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/button_widget.dart';
import 'package:flutter_foodstore/widgets/header2_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        body: Column(
      children: [
        const Header2(
          title: "Cart",
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.72,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              ListTile(
                title: Text("Teste"),
              )
            ],
          ),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total price",
                style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4F623D))),
            Text("\$ 15.00",
                style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4F623D)))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.018,
        ),
        CustomButton(textButton: "Payment")
      ],
    ));
  }
}
