import 'package:flutter/material.dart';
import 'package:flutter_foodstore/controllers/item_controller.dart';
import 'package:flutter_foodstore/models/cart_model.dart';
import 'package:flutter_foodstore/views/payment_screen.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/box_cart_widget.dart';
import 'package:flutter_foodstore/widgets/button_widget.dart';
import 'package:flutter_foodstore/widgets/header2_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.cart});

  final Cart cart;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalPrice = 0;
  @override
  void initState() {
    super.initState();
    if (widget.cart.cartMap.isNotEmpty) {
      totalPrice = widget.cart.calculateCart(widget.cart);
    }
  }

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
          child: ListView.builder(
              itemCount: widget.cart.cartMap.length,
              itemBuilder: (BuildContext context, int index) {
                List<Widget> widgets = [];
                for (var key in widget.cart.cartMap.keys) {
                  for (int i = 0; i < ItemController().sandwiches.length; i++) {
                    if (key == ItemController().sandwiches[i].name) {
                      widgets
                          .add(BoxCart(item: ItemController().sandwiches[i]));
                    }
                  }

                  for (int i = 0; i < ItemController().extras.length; i++) {
                    if (key == ItemController().extras[i].name) {
                      widgets.add(BoxCart(item: ItemController().extras[i]));
                    }
                  }
                }

                if (index < widgets.length) {
                  return widgets[index];
                } else {
                  return const SizedBox();
                }
              }),
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
            Text("\$ $totalPrice",
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
