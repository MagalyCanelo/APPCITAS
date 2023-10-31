import 'package:app/pages/screen1.dart';
import 'package:app/widgets/custom_bottomc.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Reina Isabel",
      home: Contenido7(),
    );
  }
}

class Contenido7 extends StatefulWidget {
  const Contenido7({super.key});

  @override
  State<Contenido7> createState() => _Contenido7State();
}

class _Contenido7State extends State<Contenido7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('APP PRUEBA'),
          backgroundColor: const Color(0xFFF23574),
        ),
        body: Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(children: [
              const CustomText(
                title: 'Bienvenido(a)',
                tam: 35,
                hexColor: '#695C5C',
                fontWeight: FontWeight.w500,
                fontFamily: 'Otomanopee One',
              ),
              const CustomText(
                title: 'Isabella Rodríguez',
                tam: 34,
                hexColor: '#695C5C',
                fontWeight: FontWeight.w500,
                fontFamily: 'Otomanopee One',
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset('assets/img/ecografia.png', width: 300.0),
              ),
              const CustomBottomC(
                title: 'Agendar Cita',
                path: 'assets/img/agendar.png',
                tam: 23.0,
                destino: Screen1(),
              ),
              const CustomBottomC(
                title: 'Ver Cita',
                path: 'assets/img/verCita.png',
                tam: 23.0,
                destino: Screen1(),
              )
            ])));
  }
}
