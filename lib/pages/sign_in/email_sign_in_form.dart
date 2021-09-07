
import 'package:flutter/material.dart';
import 'package:health_hero/services/auth.dart';
import 'sign_in_button.dart';


enum EmailSignInType {
  signIn,
  register
}


class EmailSignInForm extends StatefulWidget {

  final AuthServiceBase auth;

  EmailSignInForm({Key? key, required this.auth}) : super(key: key);

  @override
  _EmailSignInFormState createState() => _EmailSignInFormState();
}

class _EmailSignInFormState extends State<EmailSignInForm> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String get _email => _emailController.text;
  String get _password => _passwordController.text;

  EmailSignInType _type = EmailSignInType.signIn;
  void _submit() async {
    // print('Email ${_emailController.text} Password ${_passwordController.text}');
    try {
      if (_type == EmailSignInType.signIn) {
        await widget.auth.signInWithEmail(_email, _password);
      } else {
        await widget.auth.createUserWithEmail(_email, _password);
      }

      Navigator.of(context).pop();

    } catch (e) {
      print(e.toString());
    }

  }

  void _toggleType() {
    setState(() {
      _type = _type == EmailSignInType.signIn
        ? EmailSignInType.register
        : EmailSignInType.signIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }

  List<Widget> _buildChildren() {
    final primaryText = _type == EmailSignInType.signIn 
      ? 'Sign in' 
      : 'Create an account';
    final secondryText = _type == EmailSignInType.signIn 
      ? 'Create an NEW Account' 
      : 'Have an account? Sign in';

    return [
      TextField(
        controller: _emailController,
        decoration: InputDecoration(
          labelText: 'Email',
        ),
      ),
      SizedBox(height: 10.0),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(
          labelText: 'Password',
        ),
        obscureText: true,
      ),
      SizedBox(height: 20.0),
      SignInButton(
        text: primaryText,
        backgroundColor: Colors.teal,
        onPressed: _submit,
      ),
      SizedBox(height: 16.0),
      TextButton(
        child: Text(
          secondryText,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey[700],
            decoration: TextDecoration.underline,
          ),
        ),
        onPressed: _toggleType,
      ),
    ];
  }
}