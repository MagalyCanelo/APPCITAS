import 'package:app/pages/drawer.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/subtitulos_c.dart';

class Screen3 extends StatelessWidget {
  final String userId;
  const Screen3({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return const Conocemos();
  }
}

class Conocemos extends StatelessWidget {
  const Conocemos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFF23574),
      ),
      drawer: const Drawer(child: Midrawer()),
      body: ListView(
        children: [
          titulocentral(),
          const SubtitulosC(title: 'Conocenos'),
          textodescripcion(),
          imagen(),
          divider(),
          const SubtitulosC(title: 'Conoce a \n nuestra Obstetra'),
          imagenobstetra(),
          informacionobstetra(),
          divider(),
          const SubtitulosC(title: 'Horario de Atención'),
          horarioatencion(),
          divider(),
          const SubtitulosC(title: 'Contacto'),
          contacto(),
          const SizedBox(height: 20.0),
        ],
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

Widget titulocentral() {
  return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5.0),
      child: Row(
        children: [
          Container(
            color: const Color(0xFF6E2794),
            width: 5.0,
            height: 40.0,
          ),
          const SizedBox(width: 10.0),
          const CustomText(
              title: 'REINA ISABEL',
              tam: 30,
              color: 0XFF9F51CA,
              fontWeight: FontWeight.normal,
              fontFamily: 'Otomanopee One'),
        ],
      ));
}

Widget textodescripcion() {
  return Container(
    padding: const EdgeInsetsDirectional.only(start: 40, end: 40),
    margin: const EdgeInsets.only(top: 10),
    child: const Text(
      "El Centro Ecográfico Reina Isabel es una destacada institución en el sector de la salud y la atención médica, especializada en medicina diagnóstica y servicios de imágenes médicas. ",
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
        fontSize: 15,
        height: 1.3,
      ),
    ),
  );
}

Widget imagen() {
  return Container(
    margin: const EdgeInsets.only(left: 50, right: 50, top: 25),
    decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF23574), width: 6)),
    child: Image.asset("assets/img/conocenos.jpg"),
  );
}

Widget divider() {
  return Container(
    margin: const EdgeInsets.only(left: 26, right: 46),
    child: const Divider(
      color: Color(0xFF9F51CA),
      height: 40,
      thickness: 2,
      indent: 20,
    ),
  );
}

Widget imagenobstetra() {
  return Container(
      margin: const EdgeInsets.only(left: 75, right: 75, top: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(500),
        child: Image.asset("assets/img/foto_obstetra.jpg"),
      ));
}

Widget informacionobstetra() {
  return Center(
      child: Column(
    children: [
      Container(
          margin: const EdgeInsets.only(top: 22),
          child: const Text("Katheryn Esthefany\nAranda Quispe",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                color: Color(0xFF9F51CA),
                fontFamily: 'Otomanopee One',
              ))),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: const Text(
          "Licenciada en Obstetricia",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 17),
        ),
      ),
      Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 120, top: 20),
            child: const Text(
              "Especializada en:",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 7, left: 60),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child: const Text(
                        "•",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xFF9F51CA)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Ecografia Obstetrica",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child: const Text(
                        "•",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xFF9F51CA)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Control Prenatal",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      child: const Text(
                        "•",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xFF9F51CA)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Monitoreo Electronico Fetal",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      )
    ],
  ));
}

Widget horarioatencion() {
  return Center(
      child: Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 70, top: 20),
        child: Row(
          children: [
            SizedBox(height: 60, child: Image.asset("assets/img/reloj.png")),
            const SizedBox(width: 10),
            const Column(
              children: [
                Text("Lunes a Sabado",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 16)),
                SizedBox(height: 5),
                Text("    8:00 am - 6:00 pm",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 16))
              ],
            )
          ],
        ),
      )
    ],
  ));
}

Widget contacto() {
  return Column(
    children: [
      const SizedBox(height: 20),
      Container(
        margin: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            SizedBox(
              width: 35,
              height: 40,
              child: Image.asset("assets/img/ubicacion.png"),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ubicacion",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                SizedBox(height: 5),
                Text("Calle Augusto B. Leguía #327",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 16))
              ],
            )
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 50, right: 50, top: 25),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFF23574), width: 6)),
        child: Image.asset("assets/img/localizacion_ceri.jpg"),
      ),
      const SizedBox(
        height: 25,
      ),
      Container(
        margin: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            SizedBox(
              width: 35,
              height: 40,
              child: Image.asset("assets/img/telefono.png"),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Telefono",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                SizedBox(height: 5),
                Text("056 - 637 991",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 16))
              ],
            )
          ],
        ),
      ),
      const SizedBox(height: 30),
      Container(
        margin: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            SizedBox(
              width: 35,
              height: 40,
              child: Image.asset("assets/img/celular.png"),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Celular",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                SizedBox(height: 5),
                Text("952 448 500",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 16))
              ],
            )
          ],
        ),
      )
    ],
  );
}
