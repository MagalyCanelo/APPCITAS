/*import 'package:app/services/cita_model.dart';
import 'package:flutter/foundation.dart';

class CitaProvider with ChangeNotifier {
  late Cita _cita;

  void setCita(Cita cita) {
    _cita = cita;
    notifyListeners();
  }

  Cita getCita() {
    return _cita;
  }
}*/

import 'package:app/services/cita_model.dart';
import 'package:flutter/foundation.dart';

class CitaModel extends ChangeNotifier {
  late Cita _cita;

  CitaModel() {
    _cita = Cita(
      id: '',
      dniPaci: '',
      nomsPaci: '',
      apesPaci: '',
      celPaci: '',
      fechaCita: '',
      horaCita: '',
      tipoCita: '',
      precioCita: '',
    );
  }

  Cita get cita => _cita;

  set cita(Cita newCita) {
    _cita = newCita;
    notifyListeners();
  }

  // Función para actualizar los datos de la cita
  void actualizarCita({
    required String id,
    required String dniPaci,
    required String nomsPaci,
    required String apesPaci,
    required String celPaci,
    required String fechaCita,
    required String horaCita,
    required String tipoCita,
    required String precioCita,
  }) {
    _cita = Cita(
      id: id,
      dniPaci: dniPaci,
      nomsPaci: nomsPaci,
      apesPaci: apesPaci,
      celPaci: celPaci,
      fechaCita: fechaCita,
      horaCita: horaCita,
      tipoCita: tipoCita,
      precioCita: precioCita,
    );

    notifyListeners();
  }
}
