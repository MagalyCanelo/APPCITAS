import 'package:flutter/material.dart';

class CustomButtomText extends StatelessWidget {
  final Widget destino;

  const CustomButtomText({super.key, required this.destino});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => destino));
          },
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(20.0, 5.0))),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                size: 18.0,
                color: Color(0XFF000000),
              ),
              SizedBox(width: 10.0),
              Text(
                'Atras',
                style: TextStyle(fontSize: 16.0, color: Color(0xFF7B7B7B)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
