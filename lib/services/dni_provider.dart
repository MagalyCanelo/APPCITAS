import 'package:flutter/material.dart';

class DniProvider with ChangeNotifier {
  String _dni = '';

  String get dni => _dni;

  void setDni(String newDni) {
    _dni = newDni;
    notifyListeners();
  }
}
