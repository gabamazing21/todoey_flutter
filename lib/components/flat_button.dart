import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  RectangularButton(
      {required this.colors,
      required this.buttonTitle,
      required this.onPressed});

  final String buttonTitle;
  final Color colors;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colors,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
