import 'package:app/pages/drawer.dart';
import 'package:app/services/noti_services.dart';
// import 'package:app/widgets/fondo_r.dart';
import 'package:flutter/material.dart';

class Screen8 extends StatelessWidget {
  const Screen8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0XFFF23574),
        ),
        drawer: const Drawer(child: Midrawer()),
        body: const BotonNoti(),
        /*SingleChildScrollView(
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
                        "NOTIFICACIONES",
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
                    child: FondoR(
                        contenido: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                              8.0), // Ajusta el valor según tus preferencias
                          child: Image.asset('assets/img/notificacion.png',
                              height: 50),
                        ),
                        Container(
                          width: 2.0,
                          height: 55.0,
                          color: const Color(0XFF413D3D),
                          margin: const EdgeInsets.symmetric(horizontal: 15.0),
                        ),
                        noti('Faltan 03 dias para tu cita')
                      ],
                    )),
                  ),
                ])))*/
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xFFF23574),
          child: Container(
            height: 8.0,
          ),
        ));
  }
}

Widget noti(String texto1) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      children: [
        const Text(
          'RECORDATORIO',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat'),
        ),
        Text(
          texto1,
          style: const TextStyle(fontSize: 15, fontFamily: 'Montserrat'),
        ),
      ],
    ),
  );
}

class BotonNoti extends StatelessWidget {
  const BotonNoti({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        mostrarNotificacion();
      },
      child: const Text('Mostrar la Notificacion'),
    ));
  }
}
