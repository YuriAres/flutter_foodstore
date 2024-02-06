import 'package:flutter/material.dart';
import 'package:flutter_foodstore/controllers/item_controller.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/box_home_widget.dart';
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
          child: ListView.builder(
            itemCount: ItemController().sandwiches.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return BoxContainer(
                item: ItemController().sandwiches[index],
              );
            },
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
            child: ListView.builder(
              itemCount: ItemController().extras.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return BoxContainer(
                  item: ItemController().extras[index],
                );
              },
            )),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.05,
        ),
        CustomButton(
          textButton: "Order Now",
          buttonFunc: () {},
        )
      ],
    ));
  }
}
