# flutter_buttons

Ready-made various button styles for Flutter.

## Various buttons
![Finished App](https://github.com/utkarshdbodake/flutter_buttons/blob/master/buttonDemo.png)

## Usage
Use raised button:
```
    KRaisedButton(
        radius: 30.0,
        color: Colors.teal,
        text: 'Raised Button',
        textColor: Colors.white,
        textFontWeight: FontWeight.bold,
        onPressed: () => {},
    ),
```

Use outline button:
```
    KOutlineButton(
        radius: 30.0,
        borderColor: Colors.teal,
        text: 'Outline Button',
        textColor: Colors.teal,
        textFontWeight: FontWeight.bold,
        onPressed: () => {},
    ),
```

Use flat button:
```
    KFlatButton(
        radius: 30.0,
        color: Colors.teal,
        text: 'Flat Button',
        textColor: Colors.white,
        textFontWeight: FontWeight.bold,
        onPressed: () => {},
    ),
```

Use custom button with gradient:
```
    CustomButton(
        buttonColorGradient: [ Colors.teal.shade100, Colors.teal.shade900 ],
        buttonBorderColor: Colors.teal,
        buttonText: 'Custom button',
        buttonTextColor: Colors.white,
        highlightColor: Colors.white30,
        splashColor: Colors.white,
        onPressed: () {},
    )
```

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
