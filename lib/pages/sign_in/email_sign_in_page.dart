


import 'package:flutter/material.dart';
import 'package:health_hero/services/auth.dart';
import 'email_sign_in_form.dart';

class EmailSignInPage extends StatefulWidget {
  final AuthServiceBase auth;

  EmailSignInPage({Key? key, required this.auth}) : super(key: key);

  @override
  _EmailSignInPageState createState() => _EmailSignInPageState();
}

class _EmailSignInPageState extends State<EmailSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
        elevation: 4.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Card(
          child: EmailSignInForm(auth: widget.auth),
        )
      ),
      backgroundColor: Colors.grey[200],
    );
  }

}