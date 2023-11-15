import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<void> addCuenta(
  String dni,
  String noms,
  String apells,
  String cel,
  String correo,
  String contra,
) async {
  try {
    await FirebaseFirestore.instance.collection("cuenta").add({
      "dni": dni,
      "nombres": noms,
      "apellidos": apells,
      "celular": cel,
      "correo": correo,
      "contra": contra,
    });
  } catch (e) {}
}
