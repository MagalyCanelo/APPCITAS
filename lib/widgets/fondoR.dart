import 'package:flutter/material.dart';

class FondoR extends StatelessWidget {
  final Widget contenido;
  const FondoR({
    super.key,
    required this.contenido,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(12),
        color: const Color(0xFFFFF1F1),
        child: contenido);
  }
}
