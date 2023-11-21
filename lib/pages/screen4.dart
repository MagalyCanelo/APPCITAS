import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen5.dart';
import 'package:app/widgets/custom_input.dart';
import 'package:app/widgets/custom_input_max.dart';
import 'package:app/widgets/custom_pass.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reina Isabel",
      home: Contenido4(),
    );
  }
}

class Contenido4 extends StatefulWidget {
  const Contenido4({super.key});

  @override
  State<Contenido4> createState() => _Contenido4State();
}

class _Contenido4State extends State<Contenido4> {
  TextEditingController dniController = TextEditingController(text: "");
  TextEditingController nomController = TextEditingController(text: "");
  TextEditingController apeController = TextEditingController(text: "");
  TextEditingController celController = TextEditingController(text: "");
  TextEditingController correoController = TextEditingController(text: "");
  TextEditingController contraController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(
        child: Midrawer(),
      ),
      body: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 26.0,
                    bottom: 16.0,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10.0),
                      Image.asset(
                        'assets/img/corazon.jpg',
                        width: 110.0,
                        height: 110.0,
                      ),
                      Image.asset(
                        'assets/img/letra.jpg',
                        width: 200.0,
                      ),
                      const SizedBox(height: 18.0),
                      Row(
                        children: [
                          const SizedBox(width: 20.0),
                          Container(
                            color: const Color(0xFF6E2794),
                            width: 5.0,
                            height: 40.0,
                          ),
                          const SizedBox(width: 10.0),
                          const CustomText(
                              title: 'PERFIL',
                              tam: 29,
                              color: 0XFF9F51CA,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Otomanopee One'),
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
                                    builder: (context) => const Screen5(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Editar',
                                style: TextStyle(color: Color(0XFF9F51CA)),
                              )),
                          const SizedBox(width: 10.0),
                        ],
                      ),
                      CustomInputMax(
                        control: dniController,
                        tipo: TextInputType.number,
                        max: 8,
                        title: 'DNI',
                      ),
                      CustomInput(
                        control: nomController,
                        tipo: TextInputType.text,
                        title: 'Nombres',
                      ),
                      CustomInput(
                        control: apeController,
                        tipo: TextInputType.text,
                        title: 'Apellidos',
                      ),
                      CustomInputMax(
                        control: celController,
                        tipo: TextInputType.number,
                        max: 9,
                        title: 'Celular',
                      ),
                      CustomInput(
                        control: correoController,
                        tipo: TextInputType.emailAddress,
                        title: 'Correo',
                      ),
                      CustomPass(
                        control: contraController,
                        tipo: TextInputType.text,
                        hidden: true,
                        title: 'Contraseña',
                      ),
                    ],
                  )))),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF23574),
        child: Container(
          height: 8.0,
        ),
      ),
    );
  }
}
