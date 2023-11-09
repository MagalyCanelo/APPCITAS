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
                children: [CustomButtomText(destino: Screen11())],
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
                      ancho: 200.0,
                      alto: 50.0,
                      icono: Icons.done,
                      tamanioIcono: 28.0,
                      titulo: 'Validar',
                      tamanioLetra: 18,
                      colorL: 0XFFFFFFFF,
                      colorB: 0xFF9F51CA,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                    SizedBox(height: 10.0),
                    CustomButtomIcon(
                      ancho: 200.0,
                      alto: 50.0,
                      icono: Icons.clear_outlined,
                      tamanioIcono: 28.0,
                      titulo: 'Cancelar',
                      tamanioLetra: 18,
                      colorL: 0XFFFFFFFF,
                      colorB: 0xFF9F51CA,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
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
