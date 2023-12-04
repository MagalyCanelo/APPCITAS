import 'package:flutter/material.dart';

class CustomInputIcon extends StatelessWidget {
  final TextEditingController control;
  final TextInputType tipo;
  final bool editar;
  final String titulo;
  final IconData icono;
  final int min;
  final int max;

  const CustomInputIcon({
    super.key,
    required this.control,
    required this.tipo,
    required this.editar,
    required this.titulo,
    required this.icono,
    required this.min,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.0,
      width: double.infinity,
      child: TextFormField(
        controller: control,
        keyboardType: tipo,
        readOnly: editar,
        decoration: InputDecoration(
          labelText: titulo,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          suffixIcon: Icon(icono),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor, ingresa el $titulo';
          }
          if (value.length < min || value.length > max) {
            return 'El $titulo debe tener $min caracteres';
          }
          return null;
        },
      ),
    );
  }
}
