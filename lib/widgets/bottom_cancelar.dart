import 'package:flutter/material.dart';

class CustomCancelar extends StatelessWidget {
  final String title;
  final double tam;
  final Widget destino;

  const CustomCancelar(
      {super.key,
      required this.title,
      required this.tam,
      required this.destino});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF9F51CA)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0))),
        child: Text(
          title,
          style: TextStyle(fontSize: tam),
        ),
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => destino))
        },
      ),
    );
  }
}
