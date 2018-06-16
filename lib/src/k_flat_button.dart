import 'package:flutter/material.dart';

class KFlatButton extends StatelessWidget {
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

  KFlatButton(
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
      child: _constructFlatButton(),
    );
  }

  Widget _constructFlatButton() {
    if (icon == null) {
      return FlatButton(
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
    return FlatButton.icon(
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
