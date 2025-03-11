import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  final Map<String, Color> _defaultTheme = {
    'main1': Color.fromARGB(255, 82, 140, 226),
    'contentbackground': Color.fromARGB(255, 255, 255, 255),
    'companyname': Color.fromARGB(157, 97, 121, 136),
    'grey1': Color.fromARGB(157, 112, 137, 153),
    'grey2': Color.fromARGB(255, 229, 232, 243),
  };

  Color get main2 {
    Color main1 = _defaultTheme['main1']!;
    return Color.fromARGB(
      (main1.alpha - 75).clamp(0, 255),
      (main1.red * 0.817).clamp(0, 255).round(),
      (main1.green * 0.843).clamp(0, 255).round(),
      (main1.blue * 0.858).clamp(0, 255).round(),
    );
  }

  Map<String, Color> get getTheme => {
        ..._defaultTheme,
        'main2': main2,
      };
}
