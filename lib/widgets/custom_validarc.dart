import 'package:flutter/material.dart';

class CustomValidarC extends StatelessWidget {
  final String title;
  final IconData icono;
  final double tam;
  final VoidCallback onPressed;

  const CustomValidarC({
    super.key,
    required this.title,
    required this.icono,
    required this.tam,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFF9F51CA)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(vertical: 5.0),
          ),
          fixedSize: MaterialStateProperty.all<Size>(
            const Size(165.0, 43.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SizedBox(
                height: 30.0,
                child: Icon(icono, size: 30.0),
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: tam),
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
