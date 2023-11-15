import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController control;
  final TextInputType tipo;
  final String title;
  const CustomInput(
      {super.key,
      required this.control,
      required this.tipo,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 9.0,
          horizontal: 22.0), // Ajusta el valor según tus necesidades
      child: TextField(
        controller: control,
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
