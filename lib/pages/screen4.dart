import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen5.dart';
import 'package:app/widgets/custom_input.dart';
import 'package:app/widgets/custom_pass.dart';
import 'package:flutter/material.dart';

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
      drawer: const Drawer(child: Midrawer()),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 35.0, right: 20.0, left: 20.0, bottom: 5.0),
                child: Image.asset('assets/img/corazon.jpg',
                    width: 350, height: 95),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:
                    Image.asset('assets/img/letra.jpg', width: 350, height: 70),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20.0),
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
                        fontSize: 26,
                        fontFamily: 'Otomanopee One',
                        color: Color(0XFF9F51CA),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const Screen5()),
                          ),
                        );
                      },
                      child: const Text(
                        "Editar",
                        style: TextStyle(
                          color: Color(0XFF9F51CA),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
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
            ],
          ),
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
