import 'package:flutter/material.dart';
import 'package:flutter_foodstore/widgets/background_widget.dart';
import 'package:flutter_foodstore/widgets/box_payment_widget.dart';
import 'package:flutter_foodstore/widgets/button_widget.dart';
import 'package:flutter_foodstore/widgets/dropdownmenu_widget.dart';
import 'package:flutter_foodstore/widgets/header2_widget.dart';
import 'package:flutter_foodstore/widgets/textfield_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Header2(title: "Payment"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          BoxPayment(
            height: 0.35,
            width: 0.8,
            body: Column(
              children: [
                Text("My order",
                    style: GoogleFonts.ubuntu(
                        fontSize: MediaQuery.sizeOf(context).height * 0.025,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff4F623D))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView(
                    children: [
                      Text("-   Teste",
                          style: GoogleFonts.ubuntu(
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.022,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff4F623D))),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Price",
                        style: GoogleFonts.ubuntu(
                            fontSize: MediaQuery.sizeOf(context).height * 0.023,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4F623D))),
                    Text("\$ 15.00",
                        style: GoogleFonts.ubuntu(
                            fontSize: MediaQuery.sizeOf(context).height * 0.023,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff4F623D)))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          BoxPayment(
              height: 0.27,
              width: 0.8,
              body: Column(
                children: [
                  Text("Payment's Information",
                      style: GoogleFonts.ubuntu(
                          fontSize: MediaQuery.sizeOf(context).height * 0.025,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff4F623D))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: const CustomTextField(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Payment's Information",
                        style: GoogleFonts.ubuntu(
                            fontSize: MediaQuery.sizeOf(context).height * 0.022,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff4F623D))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  const CustomDropDownMenu()
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomButton(textButton: "Order Now", buttonFunc: () {})
        ],
      ),
    ));
  }
}
