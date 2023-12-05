import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen11.dart';
import 'package:app/pages/screen13.dart';
import 'package:app/services/cita_model.dart';
// import 'package:app/services/cita_provider.dart';
import 'package:app/services/firebase_services.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/custom_bottomc.dart';
import 'package:app/widgets/fondo_r.dart';
import 'package:app/widgets/fondo_resumen_cita.dart';
import 'package:app/widgets/informacion.dart';
// import 'package:provider/provider.dart';

class Screen12 extends StatelessWidget {
  final String citaId;
  final String precioCita;
  final String tipoCita;

  const Screen12(
      {super.key,
      required this.citaId,
      required this.precioCita,
      required this.tipoCita});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Reina Isabel",
      home: Contenido12(
        citaId: citaId,
        precioCita: precioCita,
        tipoCita: tipoCita,
      ),
    );
  }
}

class Contenido12 extends StatefulWidget {
  final String citaId;
  final String precioCita;
  final String tipoCita;
  const Contenido12(
      {super.key,
      required this.citaId,
      required this.precioCita,
      required this.tipoCita});

  @override
  State<Contenido12> createState() => _Contenido12State();
}

class _Contenido12State extends State<Contenido12> {
  late Cita cita = Cita(
    dniPaci: '',
    nomsPaci: '',
    apesPaci: '',
    celPaci: '',
    fechaCita: '',
    horaCita: '',
    precioCita: '',
    tipoCita: '',
  );

  @override
  void initState() {
    super.initState();
    obtenerInformacionCita(widget.citaId);
    print("IdCita Screen12: ${widget.citaId}");
  }

  void obtenerInformacionCita(String citaId) async {
    try {
      Map<String, dynamic>? datosCita = await getCitaById(citaId);
      if (datosCita != null) {
        setState(() {
          // Aquí asignas los datos obtenidos de la cita a tu modelo de Cita
          cita = Cita(
            dniPaci: datosCita['dniPaci'],
            nomsPaci: datosCita['nomsPaci'],
            apesPaci: datosCita['apesPaci'],
            celPaci: datosCita['celPaci'],
            fechaCita: datosCita['fechaCita'],
            horaCita: datosCita['horaCita'],
            precioCita: datosCita['precioCita'],
            tipoCita: datosCita['tipoCita'],
          );

          // Imprime los valores para verificar
          print('Valores de cita Screen12: $cita');
        });
      }
    } catch (e) {
      print('Error al obtener los datos de la cita Screen12: $e');
    }
  }

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
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.01,
            vertical: MediaQuery.of(context).size.height * 0.01,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CustomButtomText(
                    destino: Screen11(
                      selectedDate: cita.fechaCita,
                      selectedTime: convertirHora(cita.horaCita),
                      precioCita: cita.precioCita,
                      tipoCita: cita.tipoCita,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.01,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: const Color(0xFF6E2794),
                          width: 5.0,
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        const SizedBox(width: 10.0),
                        const CustomText(
                          title: 'DETALLES',
                          tam: 29,
                          color: 0XFF9F51CA,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Otomanopee One',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InformacionD(
                titleI: "INFORMACIÓN PERSONAL",
                dniI: cita.dniPaci,
                nombresI: cita.nomsPaci,
                apellidosI: cita.apesPaci,
                celularI: cita.celPaci,
              ),
              FondoR(
                contenido: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "POLÍTICA DE CANCELACIÓN",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "La reserva se puede cancelar hasta el \n ${cita.fechaCita} del xxxx a las x xx",
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              FondoR(
                contenido: Column(
                  children: [
                    FondoRC(
                      titleRC: "RESUMEN",
                      tipoecografiaRC: cita.fechaCita,
                      precioRC: cita.precioCita,
                      duracionRC: '45 mins',
                      fechaRC: cita.fechaCita,
                      horaRC: cita.horaCita,
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 10,
                      thickness: 1,
                      indent: 1,
                    ),
                    Row(
                      children: [
                        const Text(
                          "TOTAL",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Text(
                          cita.precioCita,
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const CustomBottomC(
                title: "Crear Reserva",
                path: "assets/img/crear_cita.png",
                tam: 17,
                destino: Screen13(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TimeOfDay convertirHora(String hora) {
  try {
    final List<String> tiempo = hora.split(':');
    final int horaInt = int.parse(tiempo[0]);
    final int minutoInt = int.parse(tiempo[1]);
    return TimeOfDay(hour: horaInt, minute: minutoInt);
  } catch (e) {
    print('Error al convertir la hora: $e');
    return TimeOfDay(
        hour: 0, minute: 0); // O podrías devolver un valor predeterminado
  }
}
