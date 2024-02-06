import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.ubuntu(
          fontSize: MediaQuery.sizeOf(context).height * 0.02,
          fontWeight: FontWeight.w400,
          color: const Color(0xff4F623D)),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.all(MediaQuery.of(context).size.height * 0.015),
        label: const Text("Nome"),
        labelStyle: GoogleFonts.ubuntu(
            fontSize: MediaQuery.sizeOf(context).height * 0.02,
            fontWeight: FontWeight.w500,
            color: const Color(0xff4F623D)),
        hintText: "Insira seu nome",
        hintStyle: GoogleFonts.ubuntu(
            fontSize: MediaQuery.sizeOf(context).height * 0.02,
            fontWeight: FontWeight.w400,
            color: const Color(0xff4F623D)),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 0, style: BorderStyle.none)),
      ),
    );
  }
}
