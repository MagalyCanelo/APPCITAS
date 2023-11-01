import 'package:flutter/material.dart';

class SubtitulosC extends StatelessWidget {
  final String title;

  const SubtitulosC({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 26.0,
        fontFamily: 'Otomanopee One',
      ),
    );
  }
}
