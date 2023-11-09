import 'package:app/widgets/custom_container_imagen.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(),
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
                  const CustomText(
                    title: 'SERVICIOS', 
                    tam: 30, 
                    color: 0XFF9F51CA, 
                    fontWeight: FontWeight.normal, 
                    fontFamily: 'Otomanopee One'
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const CustomContainerImage(
                tamanioContainer: 300.0, 
                direccion: 'assets/img/ecografiaObstetrica.jpg', 
                titulo: 'Ecografías Obstetricas', 
                altoImagen: 129.0, 
                descripcion: 'Examen clínico que resulta útil para establecer la presencia de un embrión/feto con vida y estimar el tiempo de gestación del embarazo.'
              ),
              const SizedBox(height: 20.0),
              const CustomContainerImage(
                tamanioContainer: 300.0, 
                direccion: 'assets/img/ecografiaTransvaginal.jpg', 
                titulo: 'Ecografías Transvaginales', 
                altoImagen: 129.0, 
                descripcion: 'Evalúa los órganos reproductores femeninos, además detecta el desarrollo del feto en el útero en una etapa más temprana.'
              ),
              const SizedBox(height: 20.0),
              const CustomContainerImage(
                tamanioContainer: 300.0, 
                direccion: 'assets/img/ecografiaObstetrica.jpg', 
                titulo: 'Control Penatral', 
                altoImagen: 129.0, 
                descripcion: 'Cuidado médico durante el embarazo para asegurar la salud de la madre y el bebé, que incluye exámenes, consejería y seguimiento.'
              )
            ],
          )
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