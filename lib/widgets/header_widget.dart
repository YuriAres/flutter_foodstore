import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Bom Hamburguer",
          style: GoogleFonts.ubuntu(
              fontSize: MediaQuery.sizeOf(context).height * 0.038,
              fontWeight: FontWeight.w700,
              color: const Color(0xff4F623D)),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: MediaQuery.sizeOf(context).width * 0.09,
              color: const Color(0xff4F623D),
            ))
      ],
    );
  }
}
