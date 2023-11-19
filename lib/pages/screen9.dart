import 'package:app/widgets/custom_container_desplegable.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> with TickerProviderStateMixin {
  bool expanded = false;
  final double initialHeight = 233.0;
  final double expandedHeight = 260.0;
  final double borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: Drawer(),
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
                      fontFamily: 'Otomanopee One'),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const CustomContainerDesplegable(
                  ruta: 'assets/img/ecografiaObstetrica.jpg',
                  titulo: 'ECOGRAFÍA OBSTETRICA',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const CustomContainerDesplegable(
                ruta: 'assets/img/ecografiaTransvaginal.jpg',
                titulo: 'ECOGRAFÍA TRANSVAGINAL',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const CustomContainerDesplegable(
                ruta: 'assets/img/controlPrenatal.jpg',
                titulo: 'CONTROL PRENATAL',
              )
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