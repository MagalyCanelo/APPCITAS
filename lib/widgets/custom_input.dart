import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextInputType tipo;
  final bool hidden;
  final String title;
  const CustomInput(
      {super.key,
      required this.tipo,
      required this.hidden,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 28.0), // Ajusta el valor según tus necesidades
      child: TextField(
        keyboardType: tipo,
        obscureText: hidden,
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
