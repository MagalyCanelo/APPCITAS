import 'package:flutter/material.dart';

class Screen15 extends StatelessWidget {
  const Screen15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('APP PRUEBA'),
          backgroundColor: const Color(0xFFA51616),
          // backgroundColor: Colors.green[500],
        ),
        body: const SingleChildScrollView(
            child: Column(children: [
          Text(
            'Otomanopee One - Regular',
            style: TextStyle(fontFamily: 'Otomanopee One'),
          ),
          Text(
            'Montserrat - Regular',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.w400),
          ),
          Text(
            'Montserrat - Medium',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
          ),
          Text(
            'Montserrat - SemiBold',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.w600),
          )
        ])));
  }
}
