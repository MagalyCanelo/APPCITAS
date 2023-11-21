import 'package:flutter/material.dart';

class CustomValidacion extends StatelessWidget {
  final String title;
  final double tam;
  final VoidCallback? onPressed; // Cambio en el tipo de parámetro

  const CustomValidacion(
      {super.key,
      required this.title,
      required this.tam,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFF9F51CA)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(vertical: 11.0, horizontal: 60.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: tam),
        ),
        onPressed:
            onPressed, // Utilización directa de la función onPressed recibida
      ),
    );
  }
}
