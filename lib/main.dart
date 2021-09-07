import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_hero/config/config.dart';
import 'package:health_hero/services/theme_changer.dart';
import 'package:provider/provider.dart';

import 'package:health_hero/health_hero.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Firebase.initializeApp();
  }
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/ZCOOL/OFL.txt');
    yield LicenseEntryWithLineBreaks(['ZCOOL'], license);
  });

  runApp(MultiProvider(
      providers: [
        Provider<Config>(create: (_) => Config()),
        ChangeNotifierProvider(create: (context) => ThemeChanger())
      ],
      child: const HealthHero(
        key: Key('HealthHero'),
      )));
}
