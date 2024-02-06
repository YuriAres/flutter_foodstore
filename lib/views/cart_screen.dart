import 'package:flutter/material.dart';
import 'package:flutter_foodstore/controllers/item_controller.dart';
import 'package:flutter_foodstore/views/payment_screen.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/box_cart_widget.dart';
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
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.685,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              BoxCart(
                item: ItemController().sandwiches[0],
              ),
              BoxCart(
                item: ItemController().sandwiches[1],
              ),
              BoxCart(item: ItemController().sandwiches[2]),
              BoxCart(item: ItemController().extras[0]),
              BoxCart(item: ItemController().extras[1]),
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
        CustomButton(
            textButton: "Payment",
            buttonFunc: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PaymentScreen();
              }));
            })
      ],
    ));
  }
}
