import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_foodstore/pages/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(
      const MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false));
}
