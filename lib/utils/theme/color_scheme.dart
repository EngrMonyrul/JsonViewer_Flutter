import 'package:flutter/material.dart';

class AppsColorScheme {
  AppsColorScheme._();

  /*-----------------> Light Color Scheme <----------------*/
  static const lightColorScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: Colors.black,
    secondary: Colors.white,
    background: Colors.white,
    error: Colors.red,
    tertiary: Color(0xFF0c1633),
  );

  /*-----------------> Dark Color Scheme <----------------*/
  static const darkColorScheme = ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Colors.white,
    secondary: Colors.black,
    background: Colors.black,
    error: Colors.red,
    tertiary: Color(0xFF0c1633),
  );
}