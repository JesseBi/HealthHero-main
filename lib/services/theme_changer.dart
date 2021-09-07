import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  /// Return true if darkmode
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  /// getter: themeMode
  ThemeMode get getTheme => _themeMode;

  /// Set theme Mode
  void setTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners(); // Refresh UI
  }
}