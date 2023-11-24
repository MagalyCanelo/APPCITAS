import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getCuentas() async {
  List cuentas = [];
  CollectionReference collectionReferenceCuentas = db.collection('cuenta');

  QuerySnapshot queryCuentas = await collectionReferenceCuentas.get();

  queryCuentas.docs.forEach((documento) {
    cuentas.add(documento.data());
  });

  return cuentas;
}

Future<Object?> getCuentaUsuario(String dni) async {
  CollectionReference collectionReferenceCuentas = db.collection('cuenta');

  QuerySnapshot queryCuentas =
      await collectionReferenceCuentas.where('dni', isEqualTo: dni).get();

  if (queryCuentas.docs.isNotEmpty) {
    return queryCuentas.docs.first.data();
  } else {
    return null;
  }
}

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
