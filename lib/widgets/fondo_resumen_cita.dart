import 'package:flutter/material.dart';

class FondoRC extends StatelessWidget {
  final String titleRC;
  final String tipoecografiaRC;
  final String precioRC;
  final String duracionRC;
  final String fechaRC;
  final String horaRC;

  const FondoRC({
    super.key,
    required this.titleRC,
    required this.tipoecografiaRC,
    required this.precioRC,
    required this.duracionRC,
    required this.fechaRC,
    required this.horaRC,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            titleRC,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(tipoecografiaRC,
                style: const TextStyle(fontWeight: FontWeight.w400)),
            const SizedBox(
              width: 110,
            ),
            Text("S/. ${precioRC.toString()}",
                style: const TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
          ],
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            const Text("Duracion: ",
                style: TextStyle(fontWeight: FontWeight.w400)),
            Text(duracionRC.toString(),
                style: const TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
          ],
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            const Text("Fecha: ",
                style: TextStyle(fontWeight: FontWeight.w400)),
            Text(fechaRC.toString(),
                style: const TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
          ],
        ),
        const SizedBox(height: 1),
        Row(
          children: [
            const Text("Hora: ", style: TextStyle(fontWeight: FontWeight.w400)),
            Text(horaRC.toString(),
                style: const TextStyle(
                    fontFamily: 'Montserrat', fontWeight: FontWeight.w300))
          ],
        ),
      ],
    );
  }
}
