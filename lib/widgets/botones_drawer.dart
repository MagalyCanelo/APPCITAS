import 'package:flutter/material.dart';

class BotonDrawer extends StatelessWidget {
  final String title;
  final String path;
  final VoidCallback onPressed;
  const BotonDrawer({
    super.key,
    required this.title,
    required this.path,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
        leading: Image.asset(path, width: 30, height: 30),
        onTap: onPressed);
  }
}
