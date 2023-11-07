import 'package:app/pages/screen1.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/custom_bottoms.dart';
import 'package:app/widgets/custom_text.dart';
// import 'package:app/pages/screen1.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/img/logo.jpg',
                        width: screenWidth * 0.70, // Ajustando el ancho aquí
                      ),
                      const CustomText(
                        title: 'RESERVA',
                        tam: 60,
                        color: 0XFF9F51CA,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Otomanopee One',
                      ),
                      const CustomText(
                        title: 'DESDE',
                        tam: 40,
                        color: 0XFFF23574,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Otomanopee One',
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: CustomText(
                          title: 'cualquier lugar',
                          tam: 30,
                          color: 0XFFF23574,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 45.0),
                        child: Image.asset(
                          'assets/img/embarazada.png',
                          width: screenWidth * 0.66, // Ajustando el ancho aquí
                        ),
                      ),
                      const CustomBottomS(
                        title: 'Empezar',
                        tam: 23.0,
                        destino: Screen1(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
