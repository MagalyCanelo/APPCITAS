import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen10.dart';
import 'package:app/pages/screen12.dart';
import 'package:app/pages/screen7.dart';
import 'package:app/services/cita_model.dart';
import 'package:app/services/cita_provider.dart';
import 'package:app/services/firebase_services.dart';
import 'package:app/services/user_model.dart';
import 'package:app/services/user_provider.dart';
import 'package:app/widgets/custom_buttom_icon.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_descrip.dart';
import 'package:app/widgets/custom_input_icon.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:app/widgets/custom_validarc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class Screen11 extends StatelessWidget {
  final String selectedDate;
  final TimeOfDay selectedTime;
  final String precioCita;
  final String tipoCita;
  const Screen11(
      {super.key,
      required this.selectedDate,
      required this.selectedTime,
      required this.precioCita,
      required this.tipoCita});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reina Isabel",
      home: Contenido11(
        selectedDate: selectedDate,
        selectedTime: selectedTime,
        precioCita: precioCita,
        tipoCita: tipoCita,
      ),
    );
  }
}

class Contenido11 extends StatefulWidget {
  final String selectedDate;
  final TimeOfDay selectedTime;
  final String precioCita;
  final String tipoCita;

  const Contenido11(
      {super.key,
      required this.selectedDate,
      required this.selectedTime,
      required this.precioCita,
      required this.tipoCita});

  @override
  State<Contenido11> createState() => _Contenido11State();
}

class _Contenido11State extends State<Contenido11> {
  TextEditingController idController = TextEditingController(text: "");
  TextEditingController dniController = TextEditingController(text: "");
  TextEditingController nomController = TextEditingController(text: "");
  TextEditingController apeController = TextEditingController(text: "");
  TextEditingController celController = TextEditingController(text: "");
  TextEditingController fechaController = TextEditingController(text: "");
  TextEditingController horaController = TextEditingController(text: "");
  TextEditingController precioCitaController = TextEditingController(text: "");
  TextEditingController tipoCitaController = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    obtenerDatosPorId();
  }

  Future<void> obtenerDatosPorId() async {
    try {
      UserProvider userProvider = Provider.of<UserProvider>(context);
      User currentUser = userProvider.getUser();

      String userId = currentUser.id;

      Map<String, dynamic>? datosCuenta = await getCuentaUsuarioById(userId);

      if (datosCuenta != null) {
        setState(() {
          dniController.text = datosCuenta['id'] ?? '';
          dniController.text = datosCuenta['dni'] ?? '';
          nomController.text = datosCuenta['nombres'] ?? '';
          apeController.text = datosCuenta['apellidos'] ?? '';
          celController.text = datosCuenta['celular'] ?? '';
          fechaController.text = formatDate(widget.selectedDate);
          horaController.text = widget.selectedTime.format(context);
          precioCitaController.text = widget.precioCita;
          tipoCitaController.text = widget.tipoCita;
        });
      }
    } catch (e) {
      print('Error al obtener los datos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Valor de tipoCita Screen11: ${widget.tipoCita}');
    final citaModel = Provider.of<CitaModel>(context, listen: false);

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
                children: [
                  CustomButtomText(
                      destino: Screen10(
                    userId: '',
                    tipoCita: '',
                    precio: '50.0',
                  )),
                ],
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
                            title: 'INFORMACIÓN',
                            tam: 29,
                            color: 0XFF9F51CA,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Otomanopee One')
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: [
                    CustomInputIcon(
                      control: dniController,
                      tipo: TextInputType.number,
                      editar: false,
                      titulo: 'DNI',
                      icono: Icons.mode,
                      min: 8,
                      max: 8,
                    ),
                    const Row(
                      children: [
                        CustomDescrip(
                            title: 'DNI del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    CustomInputIcon(
                      control: nomController,
                      tipo: TextInputType.name,
                      editar: false,
                      titulo: 'Nombres',
                      icono: Icons.mode,
                      min: 1,
                      max: 100,
                    ),
                    const Row(
                      children: [
                        CustomDescrip(
                            title: 'Nombres del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    CustomInputIcon(
                      control: apeController,
                      tipo: TextInputType.name,
                      editar: false,
                      titulo: 'Apellidos',
                      icono: Icons.mode,
                      min: 1,
                      max: 100,
                    ),
                    const Row(
                      children: [
                        CustomDescrip(
                            title: 'Apellidos del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    CustomInputIcon(
                      control: celController,
                      tipo: TextInputType.number,
                      editar: false,
                      titulo: 'Celular',
                      icono: Icons.mode,
                      min: 9,
                      max: 9,
                    ),
                    const Row(
                      children: [
                        CustomDescrip(
                            title: 'Celular del paciente',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    CustomInputIcon(
                      control: fechaController,
                      tipo: TextInputType.datetime,
                      editar: true,
                      titulo: 'Fecha',
                      icono: Icons.mode,
                      min: 1,
                      max: 20,
                    ),
                    const Row(
                      children: [
                        CustomDescrip(
                            title: 'Fecha de la cita',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    CustomInputIcon(
                      control: horaController,
                      tipo: TextInputType.datetime,
                      editar: true,
                      titulo: 'Hora',
                      icono: Icons.mode,
                      min: 1,
                      max: 20,
                    ),
                    const Row(
                      children: [
                        CustomDescrip(
                            title: 'Hora de la cita',
                            tam: 10,
                            color: 0XFF695C5C,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Montserrat'),
                      ],
                    ),
                    const SizedBox(height: 23.0),
                    CustomValidarC(
                      title: 'Validar',
                      icono: Icons.done,
                      tam: 19.0,
                      onPressed: () async {
                        // Obtener los datos al presionar el botón
                        UserProvider userProvider =
                            Provider.of<UserProvider>(context, listen: false);
                        User currentUser = userProvider.getUser();
                        String userId = currentUser.id;
                        Map<String, dynamic>? datosCuenta =
                            await getCuentaUsuarioById(userId);

                        if (datosCuenta != null) {
                          idController.text = datosCuenta['id'] ?? '';
                          dniController.text = datosCuenta['dni'] ?? '';
                          nomController.text = datosCuenta['nombres'] ?? '';
                          apeController.text = datosCuenta['apellidos'] ?? '';
                          celController.text = datosCuenta['celular'] ?? '';
                          fechaController.text =
                              formatDate(widget.selectedDate);
                          horaController.text =
                              widget.selectedTime.format(context);
                          precioCitaController.text = widget.precioCita;
                          tipoCitaController.text = widget.tipoCita;
                        }

                        Cita cita = Cita(
                          id: '',
                          dniPaci: dniController.text,
                          nomsPaci: nomController.text,
                          apesPaci: apeController.text,
                          celPaci: celController.text,
                          fechaCita: fechaController.text,
                          horaCita: horaController.text,
                          tipoCita: widget.tipoCita,
                          precioCita: widget.precioCita,
                        );
                        String? citaId = await addCitaAndGetId(
                          cita.dniPaci,
                          cita.nomsPaci,
                          cita.apesPaci,
                          cita.celPaci,
                          cita.fechaCita,
                          cita.horaCita,
                          cita.tipoCita,
                          cita.precioCita,
                        );

                        if (citaId != null) {
                          cita = cita.copyWith(id: citaId);
                          citaModel.actualizarCita(
                            id: citaId,
                            dniPaci: cita.dniPaci,
                            nomsPaci: cita.nomsPaci,
                            apesPaci: cita.apesPaci,
                            celPaci: cita.celPaci,
                            fechaCita: cita.fechaCita,
                            horaCita: cita.horaCita,
                            tipoCita: cita.tipoCita,
                            precioCita: cita.precioCita,
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen12(
                                citaId: citaId,
                                precioCita: widget.precioCita,
                                tipoCita: widget.tipoCita,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    const CustomButtomIcon(
                        title: 'Cancelar',
                        icono: Icons.clear_outlined,
                        tam: 19.0,
                        destino: Screen7())
                  ],
                ),
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

String formatDate(String? date) {
  if (date != null) {
    DateTime? parsedDate = DateTime.tryParse(date);
    if (parsedDate != null) {
      return DateFormat('dd-MM-yyyy').format(parsedDate);
    }
  }
  return '';
}
