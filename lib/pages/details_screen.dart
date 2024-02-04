import 'package:flutter/material.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/header2_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: BackgroundContainer(
            body: Column(
      children: [
        Header2(title: "Details"),
      ],
    )));
  }
}
