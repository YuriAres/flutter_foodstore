import 'package:flutter/material.dart';
import 'package:flutter_foodstore/models/item_model.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/box_details_widget.dart';
import 'package:flutter_foodstore/widgets/button_widget.dart';
import 'package:flutter_foodstore/widgets/header2_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.item});

  final Item item;

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
        DetailContainer(assetPath: item.image),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(item.name,
            style: GoogleFonts.ubuntu(
                fontSize: MediaQuery.sizeOf(context).height * 0.038,
                fontWeight: FontWeight.w700,
                color: const Color(0xff4F623D))),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.83,
          child: Text(item.description,
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
              Text("${item.price} Dollars",
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
        CustomButton(
          textButton: "Add to cart",
          buttonFunc: () {},
        )
      ],
    )));
  }
}
