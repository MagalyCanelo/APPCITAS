import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double tam;
  final FontWeight fontWeight;
  final String fontFamily;
  final String hexColor;
  const CustomText(
      {super.key,
      required this.title,
      required this.tam,
      required this.hexColor,
      required this.fontWeight,
      required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: tam,
          color: HexColor(hexColor),
          fontWeight: fontWeight,
          fontFamily: fontFamily),
    );
  }
}
