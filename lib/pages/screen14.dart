import 'package:flutter/material.dart';
import 'package:proyecto/pages/screen12.dart';
import 'package:proyecto/widgets/Custom_bottoms.dart';
import 'package:proyecto/widgets/fondoR.dart';
import 'package:proyecto/widgets/fondo_resumen_cita.dart';
import 'package:proyecto/widgets/informacion.dart';

class Screen14 extends StatelessWidget {
  const Screen14({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      body: Column(
        children: [
          Align(
            alignment:
                Alignment.centerLeft, // Alinea el Container a la izquierda
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 30),
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'DESCRIPCION',
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
                    textAlign: TextAlign.center),
                CustomBottomS(title: "Cancelar", tam: 17, destino: Screen12())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
