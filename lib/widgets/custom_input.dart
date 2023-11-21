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
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: 55.0,
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
      ),
    );
  }
}
