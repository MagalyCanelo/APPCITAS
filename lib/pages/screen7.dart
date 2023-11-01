import 'package:app/pages/drawer.dart';
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
        backgroundColor: const Color(0xFFF23574),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/img/campana.png',
                width: 25.0), // Agrega la imagen aquí
            onPressed: () {},
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const Drawer(child: Midrawer()),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Column(children: [
                  CustomText(
                    title: 'Bienvenido(a)',
                    tam: 33,
                    color: 0XFF695C5C,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Otomanopee One',
                  ),
                  CustomText(
                    title: 'xxxxxxxxxxx xxxxxxxxxxx',
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
              destino: Screen1(),
            ),
            const CustomBottomC(
              title: 'Ver Cita',
              path: 'assets/img/verCita.png',
              tam: 20.0,
              destino: Screen1(),
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
