import 'package:flutter/material.dart';
import 'package:proyecto/pages/screen3.dart';
import 'package:proyecto/widgets/botones_drawer.dart';

class Midrawer extends StatelessWidget {
  const Midrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'drawer',
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                  right: BorderSide(color: Color(0xFFF23574), width: 30)),
            ),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/img/logo_ceri.png")),
                divider(),
                const BotonDrawer(
                    title: "Inicio",
                    path: "assets/img/inicio.png",
                    destino: Screen3()),
                const BotonDrawer(
                    title: "Perfil",
                    path: "assets/img/usuario.png",
                    destino: Screen3()),
                const BotonDrawer(
                    title: "Servicios",
                    path: "assets/img/servicios.png",
                    destino: Screen3()),
                const BotonDrawer(
                    title: "Reserva",
                    path: "assets/img/reserva.png",
                    destino: Screen3()),
                const SizedBox(height: 370.0),
                const BotonDrawer(
                    title: "Salir",
                    path: "assets/img/salir.png",
                    destino: Screen3())
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF23574),
        ),
      ),
    );
  }
}

Widget divider() {
  return Container(
    margin: const EdgeInsets.only(left: 4, right: 24),
    child: const Divider(
      color: Color(0xFF9F51CA),
      height: 10,
      thickness: 2,
      indent: 20,
    ),
  );
}
