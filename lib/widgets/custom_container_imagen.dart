import 'package:app/pages/screen10.dart';
import 'package:flutter/material.dart';

class CustomContainerImage extends StatelessWidget {
  final double tamanioContainer;
  final String direccion;
  final String titulo;
  final double altoImagen;
  final String descripcion;
  final String tipoCita; // Nuevo parámetro para el tipo de cita
  final String precioCita;

  const CustomContainerImage({
    super.key,
    required this.tamanioContainer,
    required this.direccion,
    required this.titulo,
    required this.altoImagen,
    required this.descripcion,
    required this.tipoCita,
    required this.precioCita,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: tamanioContainer,
      decoration: BoxDecoration(
          color: const Color(0XFFFFF1F1),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
                spreadRadius: 1.0,
                offset: Offset(0, 5))
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(5.0)),
            child: Image.asset(
              direccion,
              height: altoImagen,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: 29.8,
            color: const Color(0XFFF23574),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 15.7,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
          ),
          const SizedBox(height: 11.5),
          Container(
            alignment: Alignment.center,
            width: 330.0,
            child: Text(
              descripcion,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 12.8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen10(
                    userId: '',
                    tipoCita: tipoCita,
                    precio: precioCita,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.calendar_month),
            label: const Text('Agendar Cita'),
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9F51CA)),
          )
        ],
      ),
    );
  }
}
