import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color? textColor;
  final Color? backgroundColor;
  final double? height;
  final double? borderRadius;
  final VoidCallback? onPressed;

  CustomElevatedButton({
    required this.child,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.height: 30.0,
    this.borderRadius: 2.0,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child:  ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          elevation: 6,
          primary: backgroundColor,
          onPrimary: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius!))
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
  
}