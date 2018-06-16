import 'package:flutter/material.dart';

class KOutlineButton extends StatelessWidget {
  final double minWidth;
  final double height;
  final double radius;
  final double borderWidth;
  final MaterialColor borderColor;
  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  final double textFontSize;
  final VoidCallback onPressed;
  final Icon icon;

  KOutlineButton(
      {this.minWidth = 150.0,
      this.height = 50.0,
      this.radius = 0.0,
      this.borderWidth = 2.0,
      @required this.borderColor,
      @required this.text,
      @required this.textColor,
      this.textFontWeight = FontWeight.normal,
      this.textFontSize = 15.0,
      @required this.onPressed,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: minWidth,
      height: height,
      child: _constructOutlineButton(),
    );
  }

  Widget _constructOutlineButton() {
    if (icon == null) {
      return OutlineButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        borderSide: BorderSide(color: borderColor, width: borderWidth),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: textFontWeight,
              fontSize: textFontSize),
        ),
      );
    }

    // Outline button with icon.
    return OutlineButton.icon(
      icon: icon,
      label: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontWeight: textFontWeight,
            fontSize: textFontSize),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      borderSide: BorderSide(color: borderColor, width: borderWidth),
      onPressed: onPressed,
    );
  }
}
