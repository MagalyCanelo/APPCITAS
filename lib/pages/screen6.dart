import 'package:app/widgets/custom_container_imagen.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:app/pages/drawer.dart';
import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(child: Midrawer()),
      body: SingleChildScrollView(
        child: Padding(
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
                  CustomText(
                    title: 'SERVICIOS',
                    tam: 29,
                    color: 0XFF9F51CA,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Otomanopee One',
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              CustomContainerImage(
                tamanioContainer: screenSize.width * 0.7,
                direccion: 'assets/img/ecografiaObstetrica.jpg',
                titulo: 'Ecografías Obstetricas',
                altoImagen: screenSize.width * 0.35,
                descripcion:
                    'Examen clínico que resulta útil para establecer la presencia de un embrión/feto con vida y estimar el tiempo de gestación del embarazo.',
                tipoCita: 'ECOGRAFÍA OBSTETRICA',
                precioCita: '50.0',
              ),
              const SizedBox(height: 20.0),
              CustomContainerImage(
                tamanioContainer: screenSize.width * 0.7,
                direccion: 'assets/img/ecografiaTransvaginal.jpg',
                titulo: 'Ecografías Transvaginales',
                altoImagen: screenSize.width * 0.35,
                descripcion:
                    'Evalúa los órganos reproductores femeninos, además detecta el desarrollo del feto en el útero en una etapa más temprana.',
                tipoCita: 'ECOGRAFÍA TRANSVAGINAL',
                precioCita: '50.0',
              ),
              const SizedBox(height: 20.0),
              CustomContainerImage(
                tamanioContainer: screenSize.width * 0.7,
                direccion: 'assets/img/ecografiaObstetrica.jpg',
                titulo: 'Control Penatral',
                altoImagen: screenSize.width * 0.35,
                descripcion:
                    'Cuidado médico durante el embarazo para asegurar la salud de la madre y el bebé, que incluye exámenes, consejería y seguimiento.',
                tipoCita: 'CONTROL PRENATAL',
                precioCita: '50.0',
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
