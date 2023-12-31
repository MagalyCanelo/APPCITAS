import 'package:flutter/material.dart';

class CustomDescrip extends StatelessWidget {
  final String title;
  final double tam;
  final FontWeight fontWeight;
  final String fontFamily;
  final int color;

  const CustomDescrip(
      {super.key,
      required this.title,
      required this.tam,
      required this.color,
      required this.fontWeight,
      required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 1.0, top: 5.0),
        child: Text(
          title,
          style: TextStyle(
              fontSize: tam,
              color: Color(color),
              fontWeight: fontWeight,
              fontFamily: fontFamily),
        ));
  }
}
