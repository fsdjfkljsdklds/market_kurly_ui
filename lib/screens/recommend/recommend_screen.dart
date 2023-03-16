import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/screens/recommend/components/card_product_item.dart';
import 'package:market_kurly_ui/screens/recommend/components/stack_product_item.dart';

class RecommendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("추천"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "베이커리 인기 급상승 랭킹",
              style: GoogleFonts.nanumGothic(
                  fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            color: Colors.orange[100],
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => StackProductItem(
                width: 160,
                item: productList[index],
                number: index + 1,
              ),
              itemCount: productList.length,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "후기가 좋은 상품",
              style: GoogleFonts.nanumGothic(
                  fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            height: 360,
            child: ListView.builder(
              padding: EdgeInsets.only(
                bottom: 40,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: 320,
                child: CardProductItem(
                  item: productList[index],
                ),
              ),
              itemCount: productList.length,
            ),
          ),
        ],
      ),
    );
  }
}
