import 'package:app/pages/screen4.dart';
import 'package:app/widgets/custom_input_dos.dart';
import 'package:app/widgets/custom_pass_dos.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/img/corazon.jpg',
              width: 90.0,
              height: 90.0,
            ),
            Image.asset(
              'assets/img/letra.jpg',
              width: 200.0,
            ),
            const SizedBox(height: 5.0),
            Row(
              children: [
                Container(
                  color: const Color(0xFF6E2794),
                  width: 5.0,
                  height: 40.0,
                ),
                const SizedBox(width: 10.0),
                const CustomText(
                  title: 'PERFIL', 
                  tam: 30, 
                  color: 0XFF9F51CA, 
                  fontWeight: FontWeight.normal, 
                  fontFamily: 'Otomanopee One'
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            const CustomInputDos(
              tipo: TextInputType.number, 
              title: 'DNI', 
              alto: 50.0
            ),
            const SizedBox(height: 15.0),
            const CustomInputDos(
              tipo: TextInputType.name, 
              title: 'Nombres', 
              alto: 50.0
            ),
            const SizedBox(height: 15.0),
            const CustomInputDos(
              tipo: TextInputType.name, 
              title: 'Apellidos', 
              alto: 50.0
            ),
            const SizedBox(height: 15.0),
            const CustomInputDos(
              tipo: TextInputType.number, 
              title: 'Celular', 
              alto: 50.0
            ),
            const SizedBox(height: 15.0),
            const CustomInputDos(
              tipo: TextInputType.emailAddress, 
              title: 'Correo', 
              alto: 50.0
            ),
            const SizedBox(height: 7.0),
            const SizedBox(
              height: 65.0,
              child: CustomPassDos(
                tipo: TextInputType.visiblePassword, 
                hidden: true, 
                title: 'Contraseña'
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                      (context) => const Screen4()
                    )
                  )
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 48),
                backgroundColor: const Color(0XFF9F51CA)),
                child: const Text(
                  "Guardar",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  ),
                )
              )
          ],
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