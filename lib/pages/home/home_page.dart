
import 'package:flutter/material.dart';
import 'package:health_hero/services/auth.dart';

class HomePage extends StatelessWidget {
  final AuthServiceBase auth;

  const HomePage({Key? key, required this.auth}) : super(key: key);

  Future<void> _signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Health Hero'),
          elevation: 4.0,
          actions: <Widget>[
            TextButton(
              child: Text('logout'),
              onPressed: _signOut,
            ),
          ]
        ),
      )
    );
  }
}
