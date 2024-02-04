import 'package:flutter/material.dart';
import 'package:flutter_foodstore/pages/details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({
    Key? key,
    required this.assetPath,
    required this.foodname,
    required this.isBurger,
    required this.duration,
  }) : super(key: key);

  final String assetPath;
  final String foodname;
  final bool isBurger;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailScreen()));
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
                isBurger
                    ? Container()
                    : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
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
                isBurger
                    ? Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.schedule,
                              color: Color(0xff4F623D),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Text(
                              "$duration mins",
                              style: GoogleFonts.ubuntu(
                                height: 0.9,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff4F623D),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
