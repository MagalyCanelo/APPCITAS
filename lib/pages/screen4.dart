import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen5.dart';
import 'package:app/services/firebase_services.dart';
import 'package:app/services/user_model.dart';
import 'package:app/services/user_provider.dart';
import 'package:app/widgets/custom_input_lect.dart';
import 'package:app/widgets/custom_pass_lect.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen4 extends StatelessWidget {
  final String userId;
  const Screen4({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reina Isabel",
      home: Contenido4(),
    );
  }
}

class Contenido4 extends StatefulWidget {
  const Contenido4({super.key});

  @override
  State<Contenido4> createState() => _Contenido4State();
}

class _Contenido4State extends State<Contenido4> {
  TextEditingController dniController = TextEditingController(text: "");
  TextEditingController nomController = TextEditingController(text: "");
  TextEditingController apeController = TextEditingController(text: "");
  TextEditingController celController = TextEditingController(text: "");
  TextEditingController correoController = TextEditingController(text: "");
  TextEditingController contraController = TextEditingController(text: "");

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
      print('ID del usuario actual perfil: $userId');

      Map<String, dynamic>? datosCuenta = await getCuentaUsuarioById(userId);

      if (datosCuenta != null) {
        setState(() {
          dniController.text = datosCuenta['dni'] ?? '';
          nomController.text = datosCuenta['nombres'] ?? '';
          apeController.text = datosCuenta['apellidos'] ?? '';
          celController.text = datosCuenta['celular'] ?? '';
          correoController.text = datosCuenta['correo'] ?? '';
          contraController.text = datosCuenta['contra'] ?? '';
        });
      }
    } catch (e) {
      print('Error al obtener los datos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    User currentUser = userProvider.getUser();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(
        child: Midrawer(),
      ),
      body: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 26.0,
                    bottom: 16.0,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10.0),
                      Image.asset(
                        'assets/img/corazon.jpg',
                        width: 110.0,
                        height: 110.0,
                      ),
                      Image.asset(
                        'assets/img/letra.jpg',
                        width: 200.0,
                      ),
                      const SizedBox(height: 18.0),
                      Row(
                        children: [
                          const SizedBox(width: 20.0),
                          Container(
                            color: const Color(0xFF6E2794),
                            width: 5.0,
                            height: 40.0,
                          ),
                          const SizedBox(width: 10.0),
                          const CustomText(
                              title: 'PERFIL',
                              tam: 29,
                              color: 0XFF9F51CA,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Otomanopee One'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Screen5(userId: currentUser.id),
                                  ),
                                );
                              },
                              child: const Text(
                                'Editar',
                                style: TextStyle(color: Color(0XFF9F51CA)),
                              )),
                          const SizedBox(width: 10.0),
                        ],
                      ),
                      CustomInputLec(
                        control: dniController,
                        tipo: TextInputType.number,
                        title: 'DNI',
                      ),
                      CustomInputLec(
                        control: nomController,
                        tipo: TextInputType.text,
                        title: 'Nombres',
                      ),
                      CustomInputLec(
                        control: apeController,
                        tipo: TextInputType.text,
                        title: 'Apellidos',
                      ),
                      CustomInputLec(
                        control: celController,
                        tipo: TextInputType.number,
                        title: 'Celular',
                      ),
                      CustomInputLec(
                        control: correoController,
                        tipo: TextInputType.emailAddress,
                        title: 'Correo',
                      ),
                      CustomPassLect(
                        control: contraController,
                        tipo: TextInputType.text,
                        hidden: true,
                        title: 'Contraseña',
                      ),
                    ],
                  )))),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFF23574),
        child: Container(
          height: 8.0,
        ),
      ),
    );
  }
}
