// import 'package:app/pages/screen0.dart';
import 'package:app/services/user_model.dart';
import 'package:app/services/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/screen3.dart';
import 'package:app/pages/screen4.dart';
// import 'package:app/pages/screen6.dart';
// import 'package:app/pages/screen7.dart';
import 'package:app/widgets/botones_drawer.dart';
import 'package:provider/provider.dart';

class Midrawer extends StatelessWidget {
  const Midrawer({super.key});
  final padding = const EdgeInsets.symmetric(horizontal: 20.0);
  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    User currentUser = userProvider.getUser();

    return Drawer(
        child: Material(
            color: Colors.white,
            child: ListView(children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                    right: 8.0, left: 8.0, top: 14.0, bottom: 8.0),
                child: Image.asset(
                  "assets/img/logo_ceri.png",
                  height: 115.0,
                ),
              ),
              divider(),
              const SizedBox(height: 15),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      BotonDrawer(
                          title: "Inicio",
                          path: "assets/img/inicio.png",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Screen3(userId: currentUser.id),
                              ),
                            );
                          }),
                      BotonDrawer(
                          title: "Perfil",
                          path: "assets/img/usuario.png",
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Screen4(userId: currentUser.id),
                              ),
                            );
                          }),
                      /*
                      BotonDrawer(
                        title: "Servicios",
                        path: "assets/img/servicios.png",
                        destino: Screen6(),
                      ),
                      BotonDrawer(
                        title: "Reserva",
                        path: "assets/img/reserva.png",
                        destino: Screen7(),
                      ),
                      SizedBox(height: 420.0),
                      BotonDrawer(
                        title: "Salir",
                        path: "assets/img/salir.png",
                        destino: Screen0(),
                      ),*/
                    ],
                  )),
            ])));
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
