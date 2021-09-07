import 'package:flutter/material.dart';
import 'package:health_hero/pages/auth/sign_up_page.dart';
import 'package:health_hero/pages/auth/login_page.dart';
import 'package:health_hero/pages/landing/landing_page.dart';
import 'package:health_hero/pages/setting/setting_screen.dart';
import 'package:health_hero/pages/sign_in/sign_in_page.dart';
import 'package:health_hero/pages/splash/splash_screen.dart';
import 'package:health_hero/pages/diary/add_meal.dart';
import 'package:health_hero/pages/home/home_page.dart';
import 'package:health_hero/services/auth.dart';

class Routes {
  ///this is to prevent anyone from instantiate this object
  Routes._();

  /// Splash Screen
  static const String splash = '/splash';

  /// Setting Screen: dark theme, locale, debugmode, etc
  static const String setting = '/setting';

  /// Login screen
  // static const String login = '/login';

  /// sign in screen
  // static const String signin = '/signin';

  /// Landing page
  static const String landing = '/landing';

  /// Add Meal widget
  static const String addMeal = '/add-meal';

  /// Add Food Modal
  // static const String addFood = '/add-food';

  /// Registered Routes
  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    setting: (BuildContext context) => SettingScreen(),
    // login: (BuildContext context) => LoginPage(),
    // signin: (BuildContext context) => SignInPage(),
    landing: (BuildContext context) => LandingPage(auth: AuthService()),
    addMeal: (BuildContext context) => AddMealScreen(),
  };
}
