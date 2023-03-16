import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly_ui/models/benefit_banner.dart';

class BenefitPage extends StatefulWidget {
  @override
  _BenefitPageState createState() => _BenefitPageState();
}

class _BenefitPageState extends State<BenefitPage> {
  Future _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            padding: EdgeInsets.only(left: 22),
            color: Color(0xeff4e4da * (index + 1)),
            height: 140,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      "${benefitBannerList[index].title}",
                      style: GoogleFonts.nanumGothic(fontSize: 14.0),
                    ),
                    Text(
                      "${benefitBannerList[index].benefit}",
                      style: GoogleFonts.nanumGothic(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  benefitBannerList[index].image,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        itemCount: benefitBannerList.length,
      ),
    );
  }
}
