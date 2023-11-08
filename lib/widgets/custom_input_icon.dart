import 'package:flutter/material.dart';

class CustomInputIcon extends StatelessWidget {
  final TextInputType tipo;
  final String titulo;
  final IconData icono;
  final double alto;
  final double ancho;

  const CustomInputIcon(
    {
      super.key,
      required this.tipo,
      required this.titulo,
      required this.icono,
      required this.alto,
      required this.ancho
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: alto,
      width: ancho,
      child: TextField(
        keyboardType: tipo,
        decoration: InputDecoration(
          labelText: titulo,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          suffixIcon: Icon(icono)
        ),
      ),
    );
  }
}