import 'dart:async';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:health_hero/enums/font_families.dart';
import 'package:health_hero/routes.dart';

class SplashScreen extends StatefulWidget {
  /// Constructor for splash screen
  SplashScreen() : super(key: Key('Splash'));

  /// Create an initial splash/launch screen state
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const _countdown = 10;
  int _count = _countdown;
  Timer? _timer;

  @override
  void initState() {
    _timer = startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            AppLocalizations.of(context)!.splashWelcome,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline5!.fontSize,
            ),
          ),
          // Text(AppLocalizations.of(context)!.appName,
          //     style: GoogleFonts.zcoolKuaiLe(
          //         textStyle: Theme.of(context).textTheme.headline5))
          Text(AppLocalizations.of(context)!.appName,
              style: TextStyle(
                  fontFamily: AppFontFamily.kuaile,
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  color: Colors.black87))
        ],
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: OutlinedButton(
          onPressed: redirect,
          child: Text(AppLocalizations.of(context)!.skipSplashScreen(_count)),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      bottomSheet: Padding(padding: EdgeInsets.only(top: 100.0)),
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
  }

  Timer startTimer() {
    return Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        _count--;
      });
      if (_count < 0.1) {
        redirect();
      }
    });
  }

  Future<void> redirect() async {
    await Navigator.of(context).pushReplacementNamed(Routes.landing);
  }
}
