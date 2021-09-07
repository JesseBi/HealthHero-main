import 'package:flutter/material.dart';
import 'package:health_hero/routes.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Sign up Page")),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
