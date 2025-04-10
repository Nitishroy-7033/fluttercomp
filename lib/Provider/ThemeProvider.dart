import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
}
