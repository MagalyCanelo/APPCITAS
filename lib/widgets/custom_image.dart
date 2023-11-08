import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String path;

  const CustomImage(
    {
      super.key, 
      required this.path
    }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(path),
      )
    );
  }
}