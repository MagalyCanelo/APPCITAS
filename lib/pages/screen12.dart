import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen11.dart';
import 'package:app/pages/screen13.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/Custom_bottomc.dart';
import 'package:app/widgets/fondo_r.dart';
import 'package:app/widgets/fondo_resumen_cita.dart';
import 'package:app/widgets/informacion.dart';

class Screen12 extends StatelessWidget {
  const Screen12({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Detalles",
      home: Detalles(),
    );
  }
}

class Detalles extends StatelessWidget {
  const Detalles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: const Color(0XFFF23574)),
        drawer: const Drawer(
          child: Midrawer(),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                child: Column(
                  children: [
                    const Row(
                      children: [CustomButtomText(destino: Screen11())],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0.0),
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
                                  title: 'DETALLES',
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
                        titleI: "INFORMACIÓN PERSONAL",
                        dniI: 12345678,
                        nombresI: "xxxxxx xxxxxx",
                        apellidosI: "xxxxxx xxxxxx",
                        celularI: 987654321),
                    const FondoR(
                      contenido: Column(
                        children: [
                          Align(
                            alignment: Alignment
                                .centerLeft, // Alinea el texto a la izquierda
                            child: Text(
                              "POLÍTICA DE CANCELACIÓN",
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
                              textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                    const FondoR(
                      contenido: Column(
                        children: [
                          FondoRC(
                            titleRC: "RESUMEN",
                            tipoecografiaRC: "XXXXXXX XXXXXX",
                            precioRC: 99.00,
                            duracionRC: 99,
                            fechaRC: "",
                            horaRC: "99",
                          ),
                          Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 1,
                            indent: 1,
                          ),
                          Row(
                            children: [
                              Text("TOTAL",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w400)),
                              SizedBox(
                                width: 190,
                              ),
                              Text("S/45.00",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const CustomBottomC(
                        title: "Crear Reserva",
                        path: "assets/img/crear_cita.png",
                        tam: 17,
                        destino: Screen13())
                  ],
                ))));
  }
}
