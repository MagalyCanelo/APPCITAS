import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen9.dart';
import 'package:app/pages/screen11.dart';
import 'package:app/widgets/custom_bottom_selected.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_calendar.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen10 extends StatelessWidget {
  final String userId;
  final String tipoCita;
  final String precio;
  const Screen10({
    super.key,
    required this.userId,
    required this.tipoCita,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Reina Isabel",
      home: Contenido10(
        userId: userId,
        tipoCita: tipoCita,
        precio: precio,
      ),
    );
  }
}

class Contenido10 extends StatefulWidget {
  final String userId;
  final String tipoCita;
  final String precio;
  const Contenido10({
    super.key,
    required this.userId,
    required this.tipoCita,
    required this.precio,
  });

  @override
  State<Contenido10> createState() => _Contenido10State();
}

class _Contenido10State extends State<Contenido10> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  void updateDate(DateTime date) {
    setState(() {
      selectedDate = DateTime(date.year, date.month, date.day);
    });
  }

  void updateTime(TimeOfDay time) {
    setState(() {
      selectedTime = time;
    });
  }

  bool isDateTimeSelected() {
    return selectedDate != null && selectedTime != null;
  }

  @override
  Widget build(BuildContext context) {
    print('Valor de tipoCita Screen10: ${widget.tipoCita}');
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0XFFF23574),
        ),
        drawer: const Drawer(
          child: Midrawer(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
          child: Column(
            children: [
              const Row(
                children: [CustomButtomText(destino: Screen9())],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Row(
                  children: [
                    Container(
                      color: const Color(0xFF6E2794),
                      width: 5.0,
                      height: 40.0,
                    ),
                    const SizedBox(width: 10.0),
                    const CustomText(
                        title: 'FECHA',
                        tam: 29,
                        color: 0XFF9F51CA,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Otomanopee One')
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: Column(
                  children: [
                    CustomCalendar(
                      onDateSelected: updateDate,
                    ),
                    const SizedBox(height: 40.0),
                    Row(
                      children: [
                        Container(
                          color: const Color(0xFF6E2794),
                          width: 5.0,
                          height: 40.0,
                        ),
                        const SizedBox(width: 10.0),
                        const CustomText(
                            title: 'HORA',
                            tam: 29,
                            color: 0XFF9F51CA,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Otomanopee One')
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    CustomBottomSelected(
                      onTimeSelected: updateTime,
                    ),
                    const SizedBox(height: 25.0),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF9F51CA)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(
                                vertical: 11.0, horizontal: 60.0),
                          ),
                        ),
                        child: const Text(
                          'Continuar',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        onPressed: isDateTimeSelected()
                            ? () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Screen11(
                                      selectedDate: selectedDate != null
                                          ? selectedDate!
                                              .toString()
                                              .substring(0, 10)
                                          : '',
                                      selectedTime: selectedTime!,
                                      tipoCita: widget.tipoCita,
                                      precioCita: widget.precio,
                                    ),
                                  ),
                                );
                              }
                            : null,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
