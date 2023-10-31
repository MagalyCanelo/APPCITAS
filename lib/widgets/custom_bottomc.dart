import 'package:flutter/material.dart';

class CustomBottomC extends StatelessWidget {
  final String title;
  final String path;
  final double tam;
  final Widget destino;
  const CustomBottomC(
      {super.key,
      required this.title,
      required this.path,
      required this.tam,
      required this.destino});

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
                  const EdgeInsets.symmetric(vertical: 17.0, horizontal: 70.0),
                )),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                    right:
                        10.0), // Ajusta el valor del relleno según tus necesidades
                child: SizedBox(
                  height: 32.0,
                  child: Image.asset(path),
                ),
              ),
              Text(
                title,
                style: TextStyle(fontSize: tam),
              ),
            ]),
            onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => destino))
                }));
  }
}
