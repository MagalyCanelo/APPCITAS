import 'package:flutter/material.dart';
import 'package:proyecto/pages/drawer.dart';
import 'package:proyecto/widgets/Custom_bottomc.dart';
import 'package:proyecto/widgets/fondoR.dart';
import 'package:proyecto/widgets/fondo_resumen_cita.dart';
import 'package:proyecto/widgets/informacion.dart';

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
        body: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft, // Alinea el Container a la izquierda
          child: Container(
            margin: const EdgeInsets.only(top: 20, left: 30),
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'DETALLES',
              style: const TextStyle(
                fontFamily: 'Otomanopee One',
                color: Color(0xFF9F51CA),
                fontSize: 25.0,
              ),
            ),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Color(0xFF9F51CA),
                  width: 5,
                ),
              ),
            ),
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
                alignment:
                    Alignment.centerLeft, // Alinea el texto a la izquierda
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
                      fontFamily: 'Montserrat', fontWeight: FontWeight.w300),
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
                  Text("TOTAL", style: TextStyle(fontWeight: FontWeight.w400)),
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
            destino: Screen12())
      ],
    ));
  }
}
