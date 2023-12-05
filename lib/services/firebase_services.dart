import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getCuentas() async {
  List cuentas = [];
  CollectionReference collectionReferenceCuentas = db.collection('cuenta');

  QuerySnapshot queryCuentas = await collectionReferenceCuentas.get();

  for (var doc in queryCuentas.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {
      "dni": data['dni'],
      "nombres": data['noms'],
      "apellidos": data['apells'],
      "celular": data['cel'],
      "correo": data['correo'],
      "contra": data['contra'],
      "uid": doc.id,
    };

    cuentas.add(person);
  }

  return cuentas;
}

Future<Map<String, dynamic>?> getCuentaUsuarioById(String userId) async {
  try {
    DocumentSnapshot documentSnapshot =
        await db.collection('cuenta').doc(userId).get();

    if (documentSnapshot.exists) {
      Map<String, dynamic>? userData =
          documentSnapshot.data() as Map<String, dynamic>?;

      if (userData != null) {
        return userData;
      }
    }
    return null;
  } catch (e) {
    print('Error al obtener los datos del usuario: $e');
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

Future<void> updateCuenta(
  String uid,
  String newdni,
  String newnoms,
  String newapells,
  String newcel,
  String newcorreo,
  String newcontra,
) async {
  await db.collection("cuenta").doc(uid).set({
    "dni": newdni,
    "nombres": newnoms,
    "apellidos": newapells,
    "celular": newcel,
    "correo": newcorreo,
    "contra": newcontra,
  });
}

Future<String?> addCitaAndGetId(
  String dniPaci,
  String nomsPaci,
  String apesPaci,
  String celPaci,
  String fechaCita,
  String horaCita,
  String tipoCita,
  String precio,
) async {
  try {
    CollectionReference citas = FirebaseFirestore.instance.collection('cita');

    Map<String, dynamic> data = {
      'dniPaci': dniPaci,
      'nomsPaci': nomsPaci,
      'apesPaci': apesPaci,
      'celPaci': celPaci,
      'fechaCita': fechaCita,
      'horaCita': horaCita,
      'tipoCita': tipoCita,
      'precioCita': precio,
    };

    DocumentReference documentReference = await citas.add(data);

    return documentReference.id;
  } catch (e) {
    print('Error al agregar la cita: $e');
    return null;
  }
}

Future<Map<String, dynamic>?> getCitaById(String citaId) async {
  try {
    DocumentSnapshot citaSnapshot = await FirebaseFirestore.instance
        .collection('cita') // Reemplaza 'citas' con el nombre de tu colección
        .doc(citaId)
        .get();

    if (citaSnapshot.exists) {
      Map<String, dynamic>? citaData =
          citaSnapshot.data() as Map<String, dynamic>?;
      if (citaData != null) {
        return citaData;
      }
    }
    return null;
  } catch (e) {
    print('Error al obtener los datos de la cita: $e');
    return null;
  }
}
