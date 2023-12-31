import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen14.dart';
import 'package:app/pages/screen7.dart';
import 'package:app/services/cita_provider.dart';
import 'package:app/services/firebase_services.dart';
import 'package:app/widgets/bottom_cancelar2.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen15 extends StatelessWidget {
  const Screen15({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Reina Isabel",
      home: Contenido15(),
    );
  }
}

class Contenido15 extends StatefulWidget {
  const Contenido15({super.key});

  @override
  State<Contenido15> createState() => _Contenido15State();
}

class _Contenido15State extends State<Contenido15> {
  @override
  Widget build(BuildContext context) {
    final citaModel = Provider.of<CitaModel>(context);
    final cita = citaModel.cita;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(child: Midrawer()),
      body: SingleChildScrollView(
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 2.0, vertical: 6.0),
                  child: Column(children: [
                    const Row(
                      children: [CustomButtomText(destino: Screen14())],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                color: const Color(0xFF6E2794),
                                width: 5.0,
                                height: 40.0,
                              ),
                              const SizedBox(width: 10.0),
                              const CustomText(
                                  title: 'CANCELAR CITA',
                                  tam: 29,
                                  color: 0XFF9F51CA,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Otomanopee One')
                            ],
                          ),
                        ],
                      ),
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
                                  bottom: 40.0),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 45.0),
                                  child: Image.asset(
                                    'assets/img/cancelar.png',
                                    width: 140.0,
                                  ),
                                ),
                                informacionC('Servicio:', cita.tipoCita),
                                informacionC('Fecha: ', cita.fechaCita),
                                informacionC('Hora: ', cita.horaCita),
                              ])),
                          CustomCancelar2(
                            title: 'Enviar',
                            icono: Icons.done,
                            tam: 19.0,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Confirmar'),
                                    content: const Text(
                                        '¿Estás seguro de que quieres eliminar esta cita?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Cancelar'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          eliminarCita(cita.id);
                                          citaModel.actualizarCita(
                                            id: '',
                                            dniPaci: '',
                                            nomsPaci: '',
                                            apesPaci: '',
                                            celPaci: '',
                                            fechaCita: '',
                                            horaCita: '',
                                            tipoCita: '',
                                            precioCita: '',
                                          );
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Screen7()),
                                          );
                                        },
                                        child: const Text('Eliminar'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          CustomCancelar2(
                            title: 'Cancelar',
                            icono: Icons.clear_outlined,
                            tam: 19.0,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Screen7()),
                              );
                            },
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
                fontSize: 16.5,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              texto2,
              style: const TextStyle(fontSize: 16.5, fontFamily: 'Montserrat'),
            ),
          ],
        ),
      ],
    ),
  );
}
