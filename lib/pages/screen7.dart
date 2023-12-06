import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen8.dart';
import 'package:app/pages/screen9.dart';
import 'package:app/pages/screen14.dart';
import 'package:app/services/user_model.dart';
import 'package:app/services/user_provider.dart';
import 'package:app/widgets/custom_bottomc.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    UserProvider userProvider = Provider.of<UserProvider>(context);
    User currentUser = userProvider.getUser();

    String priNoms = obtenerPrimeraPalabra(currentUser.nombres);
    String priApes = obtenerPrimeraPalabra(currentUser.apellidos);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF23574),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/img/campana.png', width: 25.0),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Screen8()));
            },
          ),
        ],
      ),
      drawer: const Drawer(child: Midrawer()),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(children: [
                  const CustomText(
                    title: 'Bienvenido(a)',
                    tam: 33,
                    color: 0XFF695C5C,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Otomanopee One',
                  ),
                  CustomText(
                    title: "$priNoms $priApes",
                    tam: 32,
                    color: 0XFF695C5C,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Otomanopee One',
                  ),
                ])),
            Padding(
              padding: const EdgeInsets.only(top: 55.0, bottom: 65.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset('assets/img/ecografia.png', width: 300.0),
              ),
            ),
            const CustomBottomC(
              title: 'Agendar Cita',
              path: 'assets/img/agendar.png',
              tam: 20.0,
              destino: Screen9(),
            ),
            const CustomBottomC(
              title: 'Ver Cita',
              path: 'assets/img/verCita.png',
              tam: 20.0,
              destino: Screen14(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF23574),
        child: Container(
          height: 8.0,
        ),
      ),
    );
  }
}

String obtenerPrimeraPalabra(String texto) {
  List<String> palabras = texto.split(' ');
  if (palabras.isNotEmpty) {
    return palabras.first;
  } else {
    return '';
  }
}
