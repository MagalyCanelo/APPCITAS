import 'package:app/pages/screen15.dart';
import 'package:app/pages/screen7.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/Custom_bottoms.dart';
import 'package:app/widgets/fondo_r.dart';
import 'package:app/widgets/fondo_resumen_cita.dart';
import 'package:app/widgets/informacion.dart';

class Screen14 extends StatelessWidget {
  const Screen14({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Descripcion",
      home: Descripcion(),
    );
  }
}

class Descripcion extends StatelessWidget {
  const Descripcion({super.key});

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
                children: [CustomButtomText(destino: Screen7())],
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
                            title: 'DESCRIPCIÓN',
                            tam: 29,
                            color: 0XFF9F51CA,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Otomanopee One')
                      ],
                    ),
                  ],
                ),
              ),
              const InformacionD(
                  titleI: "INFORMACION DE LA PACIENTE",
                  dniI: 12345678,
                  nombresI: "XXXXXX XXXXX",
                  apellidosI: "XXXXXX XXXXX",
                  celularI: 987654321),
              const FondoR(
                  contenido: FondoRC(
                      titleRC: "CITA",
                      tipoecografiaRC: "XXXXXXX XXXXXX",
                      precioRC: 99.0,
                      duracionRC: 99,
                      fechaRC: "12-12-2023",
                      horaRC: "18:36")),
              const FondoR(
                contenido: Column(
                  children: [
                    Align(
                      alignment: Alignment
                          .centerLeft, // Alinea el texto a la izquierda
                      child: Text(
                        "POLITICA DE CANCELACION",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                        "La reserva se puede cancelar hasta el \n xx/xx/xx del xxxx a las x xx",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center),
                    CustomBottomS(
                        title: "Cancelar", tam: 17, destino: Screen15())
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
