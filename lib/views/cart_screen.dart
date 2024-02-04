import 'package:flutter/material.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/header2_widget.dart';
import 'package:flutter_foodstore/widgets/header_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return const BackgroundContainer(
        body: Column(
      children: [
        Header2(
          title: "Cart",
        ),
      ],
    ));
  }
}
