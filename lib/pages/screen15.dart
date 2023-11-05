import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen0.dart';
import 'package:app/widgets/custom_bottomc.dart';
import 'package:flutter/material.dart';

class Screen15 extends StatelessWidget {
  const Screen15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(child: Midrawer()),
      body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          color: const Color(0xFF6E2794),
                          width: 5.0,
                          height: 40.0,
                        ),
                        const SizedBox(width: 10.0),
                        const Text(
                          "CANCELAR CITA",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Otomanopee One',
                              color: Color(0XFF9F51CA)),
                        ),
                      ],
                    ),
                    Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 75.0,
                                  left: 20.0,
                                  right: 20.0,
                                  bottom: 55.0),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 45.0),
                                  child: Image.asset(
                                    'assets/img/cancelar.png',
                                    width: 150.0, // Ajustando el ancho aquí
                                  ),
                                ),
                                informacionC(
                                    'Servicio: ', 'ECOGRAFIA TRANSVAGINAL'),
                                informacionC('Fecha: ', '29/09/23'),
                                informacionC('Hora: ', '03:00 pm'),
                                informacionC('Motivo: ', '_______________'),
                              ])),
                          const Padding(
                            padding: EdgeInsets.symmetric(),
                            child: CustomBottomC(
                              title: 'Enviar',
                              path: 'assets/img/check.png',
                              tam: 20.0,
                              destino: Screen0(),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(),
                            child: CustomBottomC(
                              title: 'Cancelar',
                              path: 'assets/img/x.png',
                              tam: 20.0,
                              destino: Screen0(),
                            ),
                          )
                        ]))
                  ])))),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF23574),
        child: Container(
          height: 8.0,
        ),
      ),
    );
  }
}

String mayusculaP(String text) {
  if (text.isEmpty) {
    return text;
  }
  List<String> words = text.split(' ');
  List<String> capitalizedWords = words.map((word) {
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).toList();
  return capitalizedWords.join(' ');
}

Widget informacionC(String texto1, String texto2) {
  texto2 = mayusculaP(texto2);
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                texto1,
                style: const TextStyle(
                  fontSize: 19,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                texto2,
                style: const TextStyle(fontSize: 19, fontFamily: 'Montserrat'),
              ),
            ],
          ),
        ],
      ));
}
