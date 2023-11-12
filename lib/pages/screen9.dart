import 'package:app/widgets/custom_container_desplegable.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen9 extends StatelessWidget {
  const Screen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0XFFF23574),
        ),
        drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
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
                      title: 'SERVICIOS',
                      tam: 30,
                      color: 0XFF9F51CA,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Otomanopee One'),
                ],
              ),
              const SizedBox(height: 15.0),
              const CustomContainerDesplegable(
                path: 'assets/img/ecografiaObstetrica.jpg',
                title: 'ECOGRAFÍA OBSTETRICA ',
                descripcion1: '1. Historia Clínico Electrónica',
                descripcion2: '2. Evaluación Materna y Fetal',
                descripcion3: '3. Control Ecográfico Básico',
              ),
            ],
          ),
        ));
  }
}
