
import 'package:flutter/material.dart';
import 'package:health_hero/pages/home/home_page.dart';
import 'package:health_hero/pages/sign_in/sign_in_page.dart';
import 'package:health_hero/services/auth.dart';


class LandingPage extends StatefulWidget {
  final AuthServiceBase auth;

  LandingPage({Key? key, required this.auth}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MyUser?>(
      stream: widget.auth.authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          MyUser? user = snapshot.data;
          if (user == null) {
            return SignInPage(
              auth: widget.auth,
            );
          } else {
            return HomePage(
              auth: widget.auth,
            );
          }
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }
    );
  }
}