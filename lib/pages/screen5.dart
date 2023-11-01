import 'package:avance_proyecto_flutter/src/pages/screen04.dart';
import 'package:flutter/material.dart';

class Screen05 extends StatefulWidget {
  const Screen05({super.key});

  @override
  State<Screen05> createState() => _Screen05State();
}

class _Screen05State extends State<Screen05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset('assets/img/corazon.jpg', width: 350, height: 85),
              Image.asset('assets/img/letra.jpg', width: 350, height: 60),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    color: Color(0XFF9F51CA),
                    width: 5.0,
                    height: 33.0,
                  ),
                  const SizedBox(width: 10.0),
                  const Text(
                    "PERFIL",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Otomanopee One',
                      color: Color(0XFF9F51CA)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const CajaTexto(
                tipo: TextInputType.number, 
                title: "DNI"
              ),
              const SizedBox(height: 10.0),
              const CajaTexto(
                tipo: TextInputType.text, 
                title: "Nombres"
              ),
              const SizedBox(height: 10.0),
              const CajaTexto(
                tipo: TextInputType.text, 
                title: "Apellidos"
              ),
              const SizedBox(height: 10.0),
              const CajaTexto(
                tipo: TextInputType.number, 
                title: "Celular"
              ),
              const SizedBox(height: 10.0),
              const CajaTexto(
                tipo: TextInputType.emailAddress, 
                title: "Correo"
              ),
              const SizedBox(height: 10.0),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye)
                ),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Screen04())));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 48),
                  primary: Color(0XFF9F51CA)
                ),
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
        )
      ),
      )
    );
  }
}

class CajaTexto extends StatelessWidget {
  final TextInputType tipo;
  final String title;
  const CajaTexto(
      {super.key,
      required this.tipo,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: tipo,
      decoration: InputDecoration(
        labelText: title,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5)
        )
      ),
    );
  }
}
