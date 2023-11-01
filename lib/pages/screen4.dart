import 'package:app/pages/screen5.dart';
import 'package:flutter/material.dart';

// class _Screen4State extends State<Screen4> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0XFFF23574),
        ),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset('assets/img/corazon.jpg', width: 350, height: 95),
                Image.asset('assets/img/letra.jpg', width: 350, height: 70),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Container(
                      color: const Color(0XFF9F51CA),
                      width: 5.0,
                      height: 33.0,
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      "PERFIL",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Otomanopee One',
                          color: Color(0XFF9F51CA)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Screen5())));
                        },
                        child: const Text(
                          "Editar",
                          style: TextStyle(
                              color: Color(0XFF9F51CA),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const CajaTexto(tipo: TextInputType.number, title: "DNI"),
                const SizedBox(height: 10.0),
                const CajaTexto(tipo: TextInputType.text, title: "Nombres"),
                const SizedBox(height: 10.0),
                const CajaTexto(tipo: TextInputType.text, title: "Apellidos"),
                const SizedBox(height: 10.0),
                const CajaTexto(tipo: TextInputType.number, title: "Celular"),
                const SizedBox(height: 10.0),
                const CajaTexto(
                    tipo: TextInputType.emailAddress, title: "Correo"),
                const SizedBox(height: 10.0),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Contraseña",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      suffixIcon: const Icon(Icons.remove_red_eye)),
                )
              ],
            ),
          )),
        ));
  }
}

class CajaTexto extends StatelessWidget {
  final TextInputType tipo;
  final String title;
  const CajaTexto({super.key, required this.tipo, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: tipo,
      decoration: InputDecoration(
          labelText: title,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
