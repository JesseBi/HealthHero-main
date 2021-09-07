import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:health_hero/enums/app_themes.dart';
import 'package:health_hero/routes.dart';

/// Main entry point of the APP
@immutable
class HealthHero extends StatelessWidget {
  /// contructor
  const HealthHero({Key? key}) : super(key: key);

  /// Root of the APP
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Hero',
      routes: Routes.routes,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en', ''),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      // TODO: Add dark theme support
      themeMode: false ? ThemeMode.dark : ThemeMode.light,
      initialRoute: Routes.splash,
    );
  }
}
