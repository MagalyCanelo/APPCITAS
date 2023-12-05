import 'package:app/services/cita_model.dart';
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
}
