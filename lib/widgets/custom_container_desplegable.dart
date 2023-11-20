import 'package:flutter/material.dart';

class CustomContainerDesplegable extends StatefulWidget {
  final String ruta;
  final String titulo;

  const CustomContainerDesplegable(
      {super.key, required this.ruta, required this.titulo});

  @override
  State<CustomContainerDesplegable> createState() =>
      _CustomContainerDesplegableState();
}

class _CustomContainerDesplegableState extends State<CustomContainerDesplegable>
    with TickerProviderStateMixin {
  bool expanded = false;
  final double initialHeight = 220.0;
  final double expandedHeight = 385.0;
  final double borderRadius = 10.0;
  final double imageBorderRadius = 5.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        height: expanded ? expandedHeight : initialHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0XFFFFF1F1),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2.0,
              blurRadius: 5.0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Positioned(
                top: 10.0,
                left: 10.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(imageBorderRadius),
                  child: Image.asset(
                    widget.ruta,
                    width: double.infinity,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Positioned(
                bottom: 40.0,
                left: 10.0,
                right: 10.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.titulo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                expanded = !expanded;
                              });
                            },
                            icon: Icon(
                              expanded
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down,
                              size: 24.0,
                            ),
                            label: Text(expanded ? '' : ''),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF9F51CA),
                              padding: EdgeInsets.zero,
                              fixedSize: const Size(0.0, 36.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: expanded,
                      child: const Column(
                        children: [
                          SizedBox(height: 7.0),
                          Text(
                            'Incluye:',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Text(
                            '1. Historia Clínico Electrónica',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Text(
                            '2. Evaluación Materna y Fetal',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Text(
                            '3. Control Ecográfico Básico',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(height: 15.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10.0,
                right: 10.0,
                child: Visibility(
                  visible: expanded,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Screen6(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9F51CA),
                      fixedSize: const Size(200.0, 36.0),
                    ),
                    child: const Text(
                      'Reservar',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
