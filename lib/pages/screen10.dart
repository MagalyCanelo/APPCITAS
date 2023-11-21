import 'package:app/pages/drawer.dart';
import 'package:app/pages/screen9.dart';
import 'package:app/pages/screen11.dart';
import 'package:app/widgets/custom_bottom_selected.dart';
import 'package:app/widgets/custom_bottoms.dart';
import 'package:app/widgets/custom_buttom_text.dart';
import 'package:app/widgets/custom_calendar.dart';
import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Screen10 extends StatelessWidget {
  const Screen10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0XFFF23574),
        ),
        drawer: const Drawer(
          child: Midrawer(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
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
                    const CustomCalendar(),
                    const SizedBox(height: 20.0),
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
                    const CustomBottomSelected(),
                    const CustomBottomS(
                        title: 'Continuar', tam: 16, destino: Screen11())
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
