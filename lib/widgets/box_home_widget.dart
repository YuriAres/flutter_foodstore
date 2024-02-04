import 'package:flutter/material.dart';
import 'package:flutter_foodstore/views/details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({
    Key? key,
    required this.assetPath,
    required this.foodname,
    required this.price,
  }) : super(key: key);

  final String assetPath;
  final String foodname;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [Color(0xffCEDEBD), Colors.white],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          assetPath: assetPath,
                          foodname: foodname,
                          price: price,
                        )));
          },
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Image.asset(assetPath),
                ),
                Text(
                  foodname,
                  style: GoogleFonts.ubuntu(
                    height: 0.9,
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff4F623D),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        color: Color(0xff4F623D),
                      ),
                      Text(
                        "$price",
                        style: GoogleFonts.ubuntu(
                          height: 0.9,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff4F623D),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
