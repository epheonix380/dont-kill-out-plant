import 'package:flutter/cupertino.dart';

enum AppStates {
  loading,
  anon,
  auth,
  error

}
class AppState extends ChangeNotifier {

  AppStates _state = AppStates.loading; 

  AppStates getState () {
    return _state;
  }

  void setState(AppStates state) {
    _state = state;
    notifyListeners();
  }

}