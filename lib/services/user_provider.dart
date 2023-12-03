import 'package:app/services/user_model.dart';
import 'package:flutter/foundation.dart';

class UserProvider with ChangeNotifier {
  late User _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }

  User getUser() {
    return _user;
  }
}
