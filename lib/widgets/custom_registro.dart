import 'package:flutter/material.dart';

class CustomRegistro extends StatelessWidget {
  final String title;
  final double tam;
  final Widget destino;
  final Future<void> Function() add;

  const CustomRegistro({
    Key? key,
    required this.title,
    required this.tam,
    required this.destino,
    required this.add,
  }) : super(key: key);

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
        onPressed: () async {
          await add();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destino),
          );
        },
      ),
    );
  }
}
