import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final double buttonRadius;
  final List<Color> buttonColorGradient;
  final double buttonBorderWidth;
  final MaterialColor buttonBorderColor;
  final String buttonText;
  final Color buttonTextColor;
  final FontWeight buttonTextFontWeight;
  final Color highlightColor;
  final Color splashColor;
  final VoidCallback onPressed;

  GradientButton(
      {this.buttonColorGradient,
      this.buttonWidth = 150.0,
      this.buttonHeight = 50.0,
      this.buttonRadius = 30.0,
      this.buttonBorderWidth = 1.0,
      @required this.buttonBorderColor,
      @required this.buttonText,
      @required this.buttonTextColor,
      this.buttonTextFontWeight = FontWeight.normal,
      @required this.highlightColor,
      @required this.splashColor,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: _getColoredBoxDecoration(context),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(buttonRadius),
        child: MaterialButton(
          child: Text(
            buttonText,
            style: TextStyle(
                color: buttonTextColor, fontWeight: buttonTextFontWeight),
          ),
          highlightColor: highlightColor.withOpacity(0.5),
          splashColor: splashColor.withOpacity(0.5),
          onPressed: onPressed,
        ),
      ),
    );
  }

  BoxDecoration _getColoredBoxDecoration(BuildContext context) {
    // Get box decoration for transparent button.
    if (buttonColorGradient == null) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(buttonRadius),
        color: Colors.transparent,
        border: Border.all(color: buttonBorderColor, width: buttonBorderWidth),
      );
    }

    // Get box decoration for button filled with color.
    return BoxDecoration(
      borderRadius: BorderRadius.circular(buttonRadius),
      gradient: LinearGradient(
          colors: buttonColorGradient,
          begin: Alignment(0.5, -1.0),
          end: Alignment(0.5, 1.0)),
      border: Border.all(color: buttonBorderColor, width: buttonBorderWidth),
    );
  }
}
