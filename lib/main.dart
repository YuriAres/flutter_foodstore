import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_foodstore/models/cart_model.dart';
import 'package:flutter_foodstore/views/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  Map<String, double> cart = {};
  runApp(MaterialApp(
      home: HomeScreen(cart: Cart(cartMap: cart)),
      debugShowCheckedModeBanner: false));
}
