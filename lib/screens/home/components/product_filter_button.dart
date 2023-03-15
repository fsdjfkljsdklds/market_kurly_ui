import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductFilterButton extends StatefulWidget {
  @override
  _ProductFilterButtonState createState() => _ProductFilterButtonState();
}

class _ProductFilterButtonState extends State<ProductFilterButton> {
  String _selectedUItem = '신상품순';
  List _options = ['신상품순', '인기순', '혜택순'];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      offset: Offset(0, 0),
      icon: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "$_selectedUItem",
                style: GoogleFonts.nanumGothic(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
          onPressed: null,
        ),
      ),
      onSelected: (value) {
        setState(() {
          _selectedUItem = value.toString();
        });
      },
      itemBuilder: (BuildContext context) {
        return _options
            .map(
              (option) => PopupMenuItem(
                child: Text(
                  "$option",
                  style: GoogleFonts.nanumGothic(fontSize: 14.0),
                ),
                value: option,
              ),
            )
            .toList();
      },
    );
  }
}
