import 'package:app/pages/screen7.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/Custom_bottoms.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: const Color(0XFFF23574)),
      drawer: const Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 20.0, left: 2.0, right: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/reservado.png",
                width: 130,
                height: 130,
              ),
              const SizedBox(height: 25),
              const Text(
                "GENIAL \n ¡ESTÁ RESERVADO!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Podrás ver el resumen de tu cita \n en la sección VER CITA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              const CustomBottomS(
                title: "Volver a Reservas",
                tam: 17,
                destino: Screen7(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
