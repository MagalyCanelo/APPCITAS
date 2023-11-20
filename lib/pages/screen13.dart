import 'package:flutter/material.dart';
import 'package:proyecto/widgets/Custom_bottoms.dart';

class Screen13 extends StatelessWidget {
  const Screen13({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Cita Reservada",
      home: Citareservada(),
    );
  }
}

class Citareservada extends StatelessWidget {
  const Citareservada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centra el contenido verticalmente
        children: [
          Image.asset(
            "assets/img/reservado.png",
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 25),
          const Text(
            "GENIAL \n ¡ESTÁ RESERVADO!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
                fontSize: 24),
          ),
          const SizedBox(height: 20),
          const Text(
            "Podras ver el resumen de tu cita \n en la seccion VER CITA",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
          const SizedBox(height: 5),
          const CustomBottomS(
              title: "Volver a Reservas", tam: 17, destino: Screen13())
        ],
      ),
    ));
  }
}
