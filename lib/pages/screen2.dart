import 'package:app/pages/screen1.dart';
import 'package:app/widgets/custom_bottoms.dart';
import 'package:app/widgets/custom_input.dart';
import 'package:app/widgets/custom_pass.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
              top: mediaQuery.padding.top + 15.0,
              bottom: mediaQuery.padding.bottom + 20.0,
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
                          tam: 30,
                          color: 0XFF695C5C,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Otomanopee One',
                        )),
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
                    const CustomBottomS(
                      title: 'Crear Cuenta',
                      tam: 20.0,
                      destino: Screen1(),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(16.0),
                        ),
                      ),
                      onPressed: () {
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
