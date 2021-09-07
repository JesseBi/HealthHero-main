
import 'package:flutter/cupertino.dart';
import 'package:health_hero/widgets/custon_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    String? text,
    Color? textColor,
    Color? backgroundColor,
    VoidCallback? onPressed,
  }) : super(
    child: Text(
      text!,
      style: TextStyle(
        color: textColor,
        fontSize: 20.0,
      ),
    ),
    textColor: textColor,
    backgroundColor: backgroundColor,
    height: 60.0,
    borderRadius: 8.0,
    onPressed: onPressed,
  );
}