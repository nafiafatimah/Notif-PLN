import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  // Contoh variabel tema
  ThemeData _themeData;

  ThemeProvider() : _themeData = ThemeData.light(); // Atur tema default

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    if (_themeData == ThemeData.light()) {
      _themeData = ThemeData.dark();
    } else {
      _themeData = ThemeData.light();
    }
    notifyListeners(); // Notifikasi perubahan tema
  }
}
