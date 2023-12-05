import 'package:flutter/material.dart';

class InformacionD extends StatelessWidget {
  final String titleI;
  final String dniI;
  final String nombresI;
  final String apellidosI;
  final String celularI;

  const InformacionD({
    Key? key,
    required this.titleI,
    required this.dniI,
    required this.nombresI,
    required this.apellidosI,
    required this.celularI,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: const EdgeInsets.all(12),
      color: const Color(0xFFFFF1F1),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              titleI,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Text("DNI: ",
                  style: TextStyle(fontWeight: FontWeight.w400)),
              Text(dniI.toString(),
                  style: const TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
            ],
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              const Text("Nombres: ",
                  style: TextStyle(fontWeight: FontWeight.w400)),
              Text(nombresI,
                  style: const TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
            ],
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              const Text("Apellidos: ",
                  style: TextStyle(fontWeight: FontWeight.w400)),
              Text(apellidosI,
                  style: const TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
            ],
          ),
          const SizedBox(height: 1),
          Row(
            children: [
              const Text("Celular: ",
                  style: TextStyle(fontWeight: FontWeight.w400)),
              Text(celularI.toString(),
                  style: const TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
            ],
          )
        ],
      ),
    );
  }
}
