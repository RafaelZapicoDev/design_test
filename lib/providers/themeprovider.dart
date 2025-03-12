import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final Map<String, Color> _defaultTheme = {
    'main': Color.fromARGB(255, 61, 123, 216),
    'foreground1': Color.fromARGB(255, 255, 255, 255),
    'foreground2': Color.fromARGB(180, 49, 95, 163),
    'foreground3': Color.fromARGB(157, 112, 137, 153),
    'foreground4': Color.fromARGB(99, 56, 101, 168),
    'background1': Color.fromARGB(255, 235, 236, 241),
    'background2': Color.fromARGB(255, 255, 255, 255),
    'background3': Color.fromARGB(255, 229, 232, 243),
  };

  final Map<String, Color> _darkTheme = {
    'main': Color.fromARGB(255, 53, 56, 63),
    'foreground1': Color.fromARGB(255, 255, 255, 255),
    'foreground2': Color.fromARGB(255, 189, 194, 204),
    'foreground3': Color.fromARGB(255, 217, 220, 248),
    'foreground4': Color.fromARGB(74, 94, 97, 110),
    'background1': Color.fromARGB(255, 42, 42, 43),
    'background2': Color.fromARGB(255, 53, 56, 63),
    'background3': Color.fromARGB(255, 49, 51, 56),
  };

  late Map<String, Color> _selectedTheme = _defaultTheme;

  void toggleTheme() {
    _selectedTheme =
        _selectedTheme == _defaultTheme ? _darkTheme : _defaultTheme;
    _isDarkTheme = !_isDarkTheme;

    notifyListeners();
  }

  bool _isDarkTheme = false;
  bool get getIsDarkTheme => _isDarkTheme;
  Map<String, Color> get getTheme => _selectedTheme;
}
