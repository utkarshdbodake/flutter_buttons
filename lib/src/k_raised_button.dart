import 'package:flutter/material.dart';

class KRaisedButton extends StatelessWidget {
  final double minWidth;
  final double height;
  final double radius;
  // The button's fill color, while it's in default (unpressed, [enabled]) state
  final Color color;
  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  final double textFontSize;
  final VoidCallback onPressed;
  final Icon icon;

  KRaisedButton(
      {this.minWidth = 150.0,
      this.height = 50.0,
      this.radius = 0.0,
      this.color = Colors.transparent,
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
      child: _constructRaisedButton(),
    );
  }

  Widget _constructRaisedButton() {
    if (icon == null) {
      return RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
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

    // Flat button with icon.
    return RaisedButton.icon(
      color: color,
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
      onPressed: onPressed,
    );
  }
}
