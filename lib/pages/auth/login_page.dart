import 'package:flutter/material.dart';
import 'package:health_hero/routes.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Login Page")),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
