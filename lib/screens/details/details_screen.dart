import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/models/product_details_arguments.dart';
import 'package:market_kurly_ui/screens/components/default_button.dart';
import 'package:market_kurly_ui/screens/details/conponents/body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {

    final arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "${arguments.product.title}",
          style: GoogleFonts.nanumGothic(
            fontSize: 16.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Body(
        product: arguments.product,
      ),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DefaultButton(
                text: "구매하기",
                color: kPrimaryColor,
                press: () {},
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
