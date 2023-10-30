import 'package:flutter/material.dart';
import 'package:app/widgets/custom_bottoms.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:app/pages/screen1.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Reina Isabel",
      home: Contenido0(),
    );
  }
}

class Contenido0 extends StatefulWidget {
  const Contenido0({super.key});

  @override
  State<Contenido0> createState() => _Contenido0State();
}

class _Contenido0State extends State<Contenido0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 22.0, bottom: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/img/logo.jpg',
                    width: 310.0,
                  ),
                  const CustomText(
                    title: 'RESERVA',
                    tam: 67,
                    hexColor: '#9F51CA',
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Otomanopee One',
                  ),
                  const CustomText(
                    title: 'DESDE',
                    tam: 50,
                    hexColor: '#F23574',
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Otomanopee One',
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: CustomText(
                      title: 'cualquier lugar',
                      tam: 35,
                      hexColor: '#F23574',
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 35.0),
                    child: Image.asset(
                      'assets/img/embarazada.png',
                      width: 300.0,
                    ),
                  ),
                  const CustomBottomS(
                    title: 'Ingresar',
                    tam: 23.0,
                    destino: Screen1(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
