import 'package:flutter/material.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/box_widget.dart';
import 'package:flutter_foodstore/widgets/button_widget.dart';
import 'package:flutter_foodstore/widgets/header_widget.dart';
import 'package:flutter_foodstore/widgets/title_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),
        Text("Select your order below!",
            style: GoogleFonts.ubuntu(
                fontSize: MediaQuery.sizeOf(context).height * 0.023,
                color: const Color(0xff4F623D))),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.045,
        ),
        const TitleText(text: "Sandwiches"),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.23,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const BoxContainer(
                assetPath: "lib/images/xburger.png",
                foodname: "X-Burger",
                isBurger: true,
                duration: 18,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.03,
              ),
              const BoxContainer(
                assetPath: "lib/images/xegg.png",
                foodname: "X-Egg",
                isBurger: true,
                duration: 15,
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.03,
              ),
              const BoxContainer(
                assetPath: "lib/images/xbacon.png",
                foodname: "X-Bacon",
                isBurger: true,
                duration: 20,
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const TitleText(text: "Extras"),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.23,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const BoxContainer(
                    assetPath: "lib/images/fries.png",
                    foodname: "Fries",
                    isBurger: false,
                    duration: 0),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.03,
                ),
                const BoxContainer(
                    assetPath: "lib/images/soda.png",
                    foodname: "Soft drink",
                    isBurger: false,
                    duration: 0),
              ],
            )),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.05,
        ),
        const CustomButton()
      ],
    ));
  }
}
