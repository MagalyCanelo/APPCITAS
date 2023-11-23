import 'package:app/pages/screen1.dart';
import 'package:app/services/firebase_services.dart';
import 'package:app/widgets/custom_input.dart';
import 'package:app/widgets/custom_input_max.dart';
import 'package:app/widgets/custom_pass.dart';
import 'package:app/widgets/custom_registro.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reina Isabel",
      home: Contenido2(),
    );
  }
}

class Contenido2 extends StatefulWidget {
  const Contenido2({super.key});

  @override
  State<Contenido2> createState() => _Contenido2State();
}

class _Contenido2State extends State<Contenido2> {
  TextEditingController dniController = TextEditingController(text: "");
  TextEditingController nomController = TextEditingController(text: "");
  TextEditingController apeController = TextEditingController(text: "");
  TextEditingController celController = TextEditingController(text: "");
  TextEditingController correoController = TextEditingController(text: "");
  TextEditingController contraController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
              top: mediaQuery.padding.top + 26.0,
              bottom: mediaQuery.padding.bottom + 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/img/corazon.jpg',
                      width: 110.0,
                    ),
                    Image.asset(
                      'assets/img/letra.jpg',
                      width: 220.0,
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        child: CustomText(
                          title: 'Crear Nueva Cuenta',
                          tam: 29,
                          color: 0XFF695C5C,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Otomanopee One',
                        )),
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
                    CustomRegistro(
                      title: 'Crear Cuenta',
                      tam: 20.0,
                      destino:
                          const Screen1(), 
                      add: () async {
                        await addCuenta(
                          dniController.text,
                          nomController.text,
                          apeController.text,
                          celController.text,
                          correoController.text,
                          contraController.text,
                        );
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(10.0),
                        ),
                      ),
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Screen1(),
                          ),
                        );
                      },
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: '¿Ya tienes una cuenta?',
                            tam: 15,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 7.0),
                            child: CustomText(
                              title: 'Ingresar',
                              tam: 15,
                              color: 0XFF9F51CA,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
