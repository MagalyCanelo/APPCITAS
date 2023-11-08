import 'package:flutter/material.dart';

class CustomButtomIcon extends StatelessWidget {
  final double ancho;
  final double alto;
  final IconData icono;
  final double tamanioIcono;
  final String titulo;
  final double tamanioLetra;
  final int colorL;
  final int colorB;
  final FontWeight fontWeight;
  final String fontFamily;

  const CustomButtomIcon(
    {
      super.key,
      required this.ancho,
      required this.alto,
      required this.icono,
      required this.tamanioIcono,
      required this.titulo,
      required this.tamanioLetra,
      required this.colorL,
      required this.colorB,
      required this.fontWeight,
      required this.fontFamily
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ancho,
      height: alto,
      child: ElevatedButton(
        onPressed: () {}, 
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(colorB)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              size: tamanioIcono,
            ),
            const SizedBox(width: 10.0),
            Text(
              titulo,
              style: TextStyle(
                fontSize: tamanioLetra,
                color: Color(colorL),
                fontWeight: fontWeight,
                fontFamily: fontFamily
              ),
            )
          ],
        ),
      ),
    );
  }
}