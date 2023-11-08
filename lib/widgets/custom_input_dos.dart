import 'package:flutter/material.dart';

class CustomInputDos extends StatelessWidget {
  final TextInputType tipo;
  final String title;
  final double alto;

  const CustomInputDos(
    {
      super.key, 
      required this.tipo, 
      required this.title,
      required this.alto
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: alto,
      child: TextField(
        keyboardType: tipo,
        decoration: InputDecoration(
          labelText: title,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
