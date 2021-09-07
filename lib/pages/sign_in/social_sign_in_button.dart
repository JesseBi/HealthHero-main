
import 'package:flutter/material.dart';
import 'package:health_hero/widgets/custon_elevated_button.dart';

class SocialSignUpButton extends CustomElevatedButton {
  SocialSignUpButton({
    required String imageAssestName,
    String? text,
    Color? textColor,
    Color? backgroundColor,
    VoidCallback? onPressed,
  }) : super(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          imageAssestName,
          height: 50.0,
        ),
        Text(
          text!,
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
          ),
        ),
        Opacity(
          opacity: 0.0,
          child: SizedBox(height: 50)
        ),
      ],
    ),
    textColor: textColor,
    backgroundColor: backgroundColor,
    height: 60.0,
    borderRadius: 8.0,
    onPressed: onPressed,
  );
}