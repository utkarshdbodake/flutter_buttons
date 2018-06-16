import 'package:flutter/material.dart';

class SelectedButton extends StatefulWidget {
  final double minWidth;
  final double height;
  final double radius;
  // The button's fill color, while it's in default (unpressed, [enabled]) state
  final Color unselectedButtonColor;
  final Color selectedButtonColor;
  final String text;
  final Color unselectedTextColor;
  final Color selectedTextColor;
  final FontWeight textFontWeight;
  final double textFontSize;
  final VoidCallback onPressed;
  final IconData iconData;
  final Color unselectedIconColor;
  final Color selectedIconColor;

  SelectedButton(
      {this.minWidth = 150.0,
      this.height = 50.0,
      this.radius = 0.0,
      @required this.unselectedButtonColor,
      @required this.selectedButtonColor,
      @required this.text,
      @required this.unselectedTextColor,
      @required this.selectedTextColor,
      this.textFontWeight = FontWeight.normal,
      this.textFontSize = 15.0,
      @required this.onPressed,
      this.iconData,
      this.unselectedIconColor,
      this.selectedIconColor});

  @override
  _SelectedButtonState createState() => new _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
  Color buttonColor;
  Color textColor;
  Color iconColor;

  @override
  void initState() {
    super.initState();
    buttonColor = widget.unselectedButtonColor;
    textColor = widget.unselectedTextColor;
    iconColor = widget.unselectedIconColor;
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: widget.minWidth,
      height: widget.height,
      child: _constructSelectedButton(),
    );
  }

  Widget _constructSelectedButton() {
    if (widget.iconData == null) {
      return RaisedButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        onPressed: () {
          _changeColor();
          widget.onPressed();
        },
        child: Text(
          widget.text,
          style: TextStyle(
              color: textColor,
              fontWeight: widget.textFontWeight,
              fontSize: widget.textFontSize),
        ),
      );
    }

    // Flat button with icon.
    return RaisedButton.icon(
        color: buttonColor,
        icon: Icon(
          widget.iconData,
          color: iconColor,
        ),
        label: Text(
          widget.text,
          style: TextStyle(
              color: textColor,
              fontWeight: widget.textFontWeight,
              fontSize: widget.textFontSize),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        onPressed: () {
          _changeColor();
          widget.onPressed();
        });
  }

  void _changeColor() {
    setState(() {
      buttonColor = buttonColor == widget.unselectedButtonColor
          ? widget.selectedButtonColor
          : widget.unselectedButtonColor;

      textColor = textColor == widget.unselectedTextColor
          ? widget.selectedTextColor
          : widget.unselectedTextColor;

      if (widget.iconData != null) {
        iconColor = iconColor == widget.unselectedIconColor
            ? widget.selectedIconColor
            : widget.unselectedIconColor;
      }
    });
  }
}
