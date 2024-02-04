import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/box_details_widget.dart';
import 'package:flutter_foodstore/widgets/button_widget.dart';
import 'package:flutter_foodstore/widgets/header2_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.assetPath,
      required this.foodname,
      required this.price});

  final String assetPath;
  final String foodname;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundContainer(
            body: Column(
      children: [
        const Header2(title: "Details"),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        DetailContainer(assetPath: assetPath),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(foodname,
            style: GoogleFonts.ubuntu(
                fontSize: MediaQuery.sizeOf(context).height * 0.038,
                fontWeight: FontWeight.w700,
                color: const Color(0xff4F623D))),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.83,
          child: Text(
              "A delicius Burger with bread, tomatoes, beef, cheese, pepino and cebola.",
              textAlign: TextAlign.justify,
              style: GoogleFonts.ubuntu(
                  fontSize: MediaQuery.sizeOf(context).height * 0.023,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff4F623D))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.83,
          child: Row(
            children: [
              Icon(
                Icons.schedule,
                size: MediaQuery.of(context).size.height * 0.05,
                color: const Color(0xff4F623D),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Text("20 mins",
                  style: GoogleFonts.ubuntu(
                      fontSize: MediaQuery.sizeOf(context).height * 0.025,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff4F623D))),
              const Spacer(),
              Icon(
                Icons.attach_money,
                size: MediaQuery.of(context).size.height * 0.05,
                color: const Color(0xff4F623D),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text("$price Dollars",
                  style: GoogleFonts.ubuntu(
                      fontSize: MediaQuery.sizeOf(context).height * 0.025,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff4F623D)))
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const CustomButton(
          textButton: "Add to cart",
        )
      ],
    )));
  }
}
