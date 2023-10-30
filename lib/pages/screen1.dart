import 'package:app/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Reina Isabel",
      home: Contenido1(),
    );
  }
}

class Contenido1 extends StatefulWidget {
  const Contenido1({super.key});

  @override
  State<Contenido1> createState() => _Contenido1State();
}

class _Contenido1State extends State<Contenido1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/img/logo.jpg',
                    width: 310.0,
                  ),
                  Image.asset(
                    'assets/img/logo.jpg',
                    width: 310.0,
                  ),
                  const CustomInput(
                    tipo: TextInputType.emailAddress,
                    hidden: false,
                    title: 'Correo',
                  ),
                  const CustomInput(
                      tipo: TextInputType.text,
                      hidden: true,
                      title: 'Contraseña')
                ],
              )
            ],
          )),
    );
  }
}
