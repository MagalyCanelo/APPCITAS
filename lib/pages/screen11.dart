import 'package:app/pages/screen10.dart';
import 'package:app/pages/screen12.dart';
import 'package:app/pages/screen7.dart';
import 'package:app/widgets/custom_buttom_icon.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_input_icon.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen11 extends StatelessWidget {
  const Screen11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: const Color(0XFFF23574)),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
          child: Column(
            children: [
              const Row(
                children: [CustomButtomText(destino: Screen10())],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: const Color(0xFF6E2794),
                          width: 5.0,
                          height: 40.0,
                        ),
                        const SizedBox(width: 10.0),
                        const CustomText(
                            title: 'INFORMACIÓN',
                            tam: 30,
                            color: 0XFF9F51CA,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Otomanopee One')
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: [
                    CustomInputIcon(
                        alto: 45.0,
                        ancho: double.infinity,
                        tipo: TextInputType.number,
                        titulo: 'DNI',
                        icono: Icons.mode),
                    Row(
                      children: [
                        CustomText(
                            title: 'DNI del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    CustomInputIcon(
                        alto: 45.0,
                        ancho: double.infinity,
                        tipo: TextInputType.name,
                        titulo: 'Nombres',
                        icono: Icons.mode),
                    Row(
                      children: [
                        CustomText(
                            title: 'Nombres del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    CustomInputIcon(
                        alto: 45.0,
                        ancho: double.infinity,
                        tipo: TextInputType.name,
                        titulo: 'Apellidos',
                        icono: Icons.mode),
                    Row(
                      children: [
                        CustomText(
                            title: 'Apellidos del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    CustomInputIcon(
                        alto: 45.0,
                        ancho: double.infinity,
                        tipo: TextInputType.number,
                        titulo: 'Celular',
                        icono: Icons.mode),
                    Row(
                      children: [
                        CustomText(
                            title: 'Celular del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    CustomInputIcon(
                        alto: 45.0,
                        ancho: double.infinity,
                        tipo: TextInputType.datetime,
                        titulo: 'Fecha',
                        icono: Icons.mode),
                    Row(
                      children: [
                        CustomText(
                            title: 'Fecha de la cita',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    CustomInputIcon(
                        alto: 45.0,
                        ancho: double.infinity,
                        tipo: TextInputType.datetime,
                        titulo: 'Hora',
                        icono: Icons.mode),
                    Row(
                      children: [
                        CustomText(
                            title: 'Hora de la cita',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    CustomButtomIcon(
                        title: 'Validar',
                        icono: Icons.done,
                        tam: 20.0,
                        destino: Screen12()),
                    CustomButtomIcon(
                        title: 'Cancelar',
                        icono: Icons.clear_outlined,
                        tam: 20.0,
                        destino: Screen7())
                  ],
                ),
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
