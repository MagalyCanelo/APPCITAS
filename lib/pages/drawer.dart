import 'package:flutter/material.dart';
import 'package:app/pages/screen3.dart';
import 'package:app/pages/screen4.dart';
import 'package:app/pages/screen9.dart';
import 'package:app/pages/screen7.dart';
import 'package:app/widgets/botones_drawer.dart';

class Midrawer extends StatelessWidget {
  const Midrawer({super.key});
  final padding = const EdgeInsets.symmetric(horizontal: 20.0);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: const <Widget>[
            SizedBox(height: 48),
            BotonDrawer(
                title: "Inicio",
                path: "assets/img/inicio.png",
                destino: Screen3()),
            BotonDrawer(
                title: "Perfil",
                path: "assets/img/usuario.png",
                destino: Screen4()),
            BotonDrawer(
                title: "Servicios",
                path: "assets/img/servicios.png",
                destino: Screen9()),
            BotonDrawer(
                title: "Reserva",
                path: "assets/img/reserva.png",
                destino: Screen7()),
            SizedBox(height: 430.0),
            BotonDrawer(
                title: "Salir",
                path: "assets/img/salir.png",
                destino: Screen3())
          ],
        ),
      ),
    );
  }
}






// class Midrawer extends StatelessWidget {
//   const Midrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'drawer',
//       home: Column(
//         children: [
//           Container(
//               margin: const EdgeInsets.only(top: 10),
//               padding: const EdgeInsets.all(8.0),
//               child: Image.asset("assets/img/logo_ceri.png")),
//           divider(),
//           const BotonDrawer(
//               title: "Inicio",
//               path: "assets/img/inicio.png",
//               destino: Screen3()),
//           const BotonDrawer(
//               title: "Perfil",
//               path: "assets/img/usuario.png",
//               destino: Screen3()),
//           const BotonDrawer(
//               title: "Servicios",
//               path: "assets/img/servicios.png",
//               destino: Screen3()),
//           const BotonDrawer(
//               title: "Reserva",
//               path: "assets/img/reserva.png",
//               destino: Screen3()),
//           const SizedBox(height: 370.0),
//           const BotonDrawer(
//               title: "Salir", path: "assets/img/salir.png", destino: Screen3())
//         ],
//       ),
//     );
//   }
// }

// Widget divider() {
//   return Container(
//     margin: const EdgeInsets.only(left: 4, right: 24),
//     child: const Divider(
//       color: Color(0xFF9F51CA),
//       height: 10,
//       thickness: 2,
//       indent: 20,
//     ),
//   );
// }
