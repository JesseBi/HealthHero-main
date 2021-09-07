import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Config {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  static const String _isDarkMode = 'is_dark_mode';
  static const String _localeCode = 'locale_code';

  /// Theme module
  Future<bool> changeTheme(ThemeMode themeMode) async {
    return _prefs.then((prefs) {
      return prefs.setInt(_isDarkMode, themeMode.value);
    });
  }

  Future<bool> get isDarkMode {
    return _prefs.then((prefs) {
      return prefs.getBool(_isDarkMode) ?? false;
    });
  }

  ///Locale module
  Future<String> get appLocale {
    return _prefs.then((prefs) {
      return prefs.getString(_localeCode) ?? 'en';
    });
  }

  Future<bool> changeLanguage(String value) {
    return _prefs.then((prefs) {
      return prefs.setString(_localeCode, value);
    });
  }
}

extension ThemeModeExtension on ThemeMode {
  int get value {
    if (this == ThemeMode.light) {
      return 0;
    } else if (this == ThemeMode.dark) {
      return 1;
    }
    return -1;
  }
}
