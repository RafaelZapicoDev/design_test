import 'package:flutter/material.dart';

class UiProvider with ChangeNotifier {
  bool _filtersVisibility = true;
  bool get getfiltersVisibility => _filtersVisibility;

  void toggleFilterVisibility() {
    _filtersVisibility = !_filtersVisibility;
    notifyListeners();
  }

  bool _signinsignup = true;
  bool get getsigninsignup => _signinsignup;

  void togglesigninsignup() {
    _signinsignup = !_signinsignup;
    notifyListeners();
  }
}
