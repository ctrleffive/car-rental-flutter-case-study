import 'package:flutter/material.dart';

class Styles {
  static final Color _primaryColor = Colors.blue;
  static final Color _accentColor = Colors.lightBlueAccent;
  static final Color _gradientStart = Color.fromRGBO(84, 88, 94, 1); // RGB(84, 88, 94)
  static final Color _gradientEnd = Color.fromRGBO(22, 27, 34, 1); // RGB(22, 27, 34)

  static final ThemeData theme = ThemeData(
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    brightness: Brightness.dark,
    fontFamily: 'NunitoSans'
  );

  static final LinearGradient gradient = LinearGradient(
    colors: [
      _gradientStart,
      _gradientEnd,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1]
  );

  static const EdgeInsetsGeometry appPadding = EdgeInsets.all(17);

  static const InputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      style: BorderStyle.none,
    ),
  );
  
  static final Color singleItemBg = _gradientStart.withOpacity(0.3);
}