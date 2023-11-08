import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double tam;
  final FontWeight fontWeight;
  final String fontFamily;
  final int color;

  const CustomText(
    {
      super.key,
      required this.title,
      required this.tam,
      required this.color,
      required this.fontWeight,
      required this.fontFamily
    }
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: tam,
        color: Color(color),
        fontWeight: fontWeight,
        fontFamily: fontFamily
      ),
    );
  }
}
