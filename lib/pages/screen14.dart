import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen15.dart';
import 'package:app/pages/screen7.dart';
import 'package:app/services/cita_provider.dart';
import 'package:app/widgets/bottom_cancelar.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/fondo_r.dart';
import 'package:app/widgets/fondo_resumen_cita.dart';
import 'package:app/widgets/informacion.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class Screen14 extends StatelessWidget {
  const Screen14({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Reina Isabel",
      home: Contenido14(),
    );
  }
}

class Contenido14 extends StatefulWidget {
  const Contenido14({super.key});

  @override
  State<Contenido14> createState() => _Contenido14State();
}

class _Contenido14State extends State<Contenido14> {
  /*
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

          print('Valores de cita Screen12: $cita');
        });
      }
    } catch (e) {
      print('Error al obtener los datos de la cita Screen12: $e');
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    final citaModel = Provider.of<CitaModel>(context);
    final cita = citaModel.cita;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: const Color(0XFFF23574)),
      drawer: const Drawer(
        child: Midrawer(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
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
                          fontFamily: 'Otomanopee One',
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // Text('ID de la cita: ${cita.id}'),
              InformacionD(
                titleI: "INFORMACION DE LA PACIENTE",
                dniI: cita.dniPaci,
                nombresI: cita.nomsPaci,
                apellidosI: cita.apesPaci,
                celularI: cita.celPaci,
              ),
              FondoR(
                contenido: FondoRC(
                  titleRC: "CITA",
                  tipoecografiaRC: cita.tipoCita,
                  precioRC: cita.precioCita,
                  duracionRC: '45 mins',
                  fechaRC: cita.fechaCita,
                  horaRC: cita.horaCita,
                ),
              ),
              FondoR(
                contenido: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "POLITICA DE CANCELACION",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      buildCancelationDate(cita.fechaCita),
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const CustomCancelar(
                      title: "Cancelar",
                      tam: 15.5,
                      destino: Screen15(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String buildCancelationDate(String? fechaCitaStr) {
  if (fechaCitaStr != null) {
    try {
      DateTime fechaCita = convertirFecha(fechaCitaStr);
      DateTime fechaDosDiasAntes = fechaCita.subtract(const Duration(days: 2));

      String textoFecha = DateFormat('dd/MM/yyyy').format(fechaDosDiasAntes);

      return "La reserva se puede cancelar hasta el \n $textoFecha";
    } catch (e) {
      print('Error al convertir la fecha: $e');
      return "Fecha de cita no válida";
    }
  } else {
    DateTime fechaActual = DateTime.now();
    DateTime fechaDosDiasAntes = fechaActual.subtract(const Duration(days: 2));

    String textoFecha = DateFormat('dd/MM/yyyy').format(fechaDosDiasAntes);

    return "La reserva se puede cancelar hasta el \n $textoFecha";
  }
}

DateTime convertirFecha(String fecha) {
  List<String> partesFecha = fecha.split('-');
  if (partesFecha.length == 3) {
    int dia = int.tryParse(partesFecha[0]) ?? 1;
    int mes = int.tryParse(partesFecha[1]) ?? 1;
    int anio = int.tryParse(partesFecha[2]) ?? DateTime.now().year;

    String fechaFormateada = '$anio-$mes-$dia';

    return DateTime.parse(fechaFormateada);
  } else {
    return DateTime.now();
  }
}
