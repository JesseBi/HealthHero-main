import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_hero/services/auth.dart';

import 'email_sign_in_page.dart';
import 'social_sign_in_button.dart';


class SignInPage extends StatefulWidget {
  final AuthServiceBase auth;

  SignInPage({Key? key, required this.auth}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  
  Future<void> _signInGuest() async {
    try {
      await widget.auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await widget.auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        // fullscreenDialog: true,
        builder: (context) => EmailSignInPage(auth: widget.auth),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Hero'),
        elevation: 4.0,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 60),
            SocialSignUpButton(
              imageAssestName: 'assets/images/logo_google.png',
              text: 'Sign in with Google',
              textColor: Colors.black87,
              backgroundColor: Colors.white,
              onPressed: _signInWithGoogle,
            ),
            SizedBox(height: 15),
            SocialSignUpButton(
              imageAssestName: 'assets/images/email_white.png',
              text: 'Sign in with Email',
              textColor: Colors.white,
              backgroundColor: Colors.teal,
              onPressed: () => _signInWithEmail(context),
            ),
            SizedBox(height: 15),
            SocialSignUpButton(
              imageAssestName: 'assets/images/guest.png',
              text: 'Guest',
              textColor: Colors.white,
              backgroundColor: Colors.grey[700],
              onPressed: _signInGuest,
            ),
          ],
        ));
  }
}

