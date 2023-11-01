import 'package:flutter/material.dart';

class BotonDrawer extends StatelessWidget {
  final String title;
  final String path;
  final Widget destino;
  const BotonDrawer(
      {super.key,
      required this.title,
      required this.path,
      required this.destino});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 19),
      ),
      leading: Image.asset(path, width: 35, height: 35),
      onTap: () {
        // Navegación al tocar el elemento 1
        Navigator.of(context).pop(); // Cierra el Drawer
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => destino,
        ));
      },
    );
  }
}
