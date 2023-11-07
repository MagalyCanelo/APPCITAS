import 'package:app/pages/screen2.dart';
import 'package:app/pages/screen3.dart';
import 'package:app/widgets/custom_bottoms.dart';
import 'package:app/widgets/custom_input.dart';
import 'package:app/widgets/custom_pass.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
    // Obtener información sobre la pantalla actual
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(
                top: mediaQuery.padding.top + 70.0,
                bottom: mediaQuery.padding.bottom + 28.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/img/corazon.jpg',
                        width: 130.0,
                      ),
                      Image.asset(
                        'assets/img/letra.jpg',
                        width: 240.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        child: CustomText(
                          title: 'Bienvenido(a)',
                          tam: 35,
                          color: 0XFF695C5C,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Otomanopee One',
                        ),
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
                        title: 'Ingresar',
                        tam: 20.0,
                        destino: Screen3(),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.all(16.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Screen2(),
                            ),
                          );
                        },
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              title: '¿No tienes una cuenta?',
                              tam: 15,
                              color: 0XFF695C5C,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat',
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 7.0),
                              child: CustomText(
                                title: 'Crear Cuenta',
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
        ));
  }
}
