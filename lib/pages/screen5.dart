import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen4.dart';
import 'package:app/widgets/custom_input.dart';
import 'package:app/widgets/custom_pass.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 22.0, right: 20.0, left: 20.0, bottom: 3.0),
              child:
                  Image.asset('assets/img/corazon.jpg', width: 350, height: 95),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child:
                  Image.asset('assets/img/letra.jpg', width: 345, height: 65),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
              child: Row(
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
                      fontSize: 25.5,
                      fontFamily: 'Otomanopee One',
                      color: Color(0XFF9F51CA),
                    ),
                  ),
                ],
              ),
            ),
            const CustomInput(
              tipo: TextInputType.number,
              title: 'DNI',
            ),
            const CustomInput(
              tipo: TextInputType.text,
              title: 'Nombres',
            ),
            const CustomInput(
              tipo: TextInputType.text,
              title: 'Apellidos',
            ),
            const CustomInput(
              tipo: TextInputType.number,
              title: 'Celular',
            ),
            const CustomInput(
              tipo: TextInputType.emailAddress,
              title: 'Correo',
            ),
            const CustomPass(
              tipo: TextInputType.text,
              hidden: true,
              title: 'Contraseña',
            ),
            const SizedBox(height: 15.0),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Screen4())));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 48),
                    backgroundColor: const Color(0XFF9F51CA)),
                child: const Text(
                  "Guardar",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF23574),
        child: Container(
          height: 8.0,
        ),
      ),
    );
  }
}
