import 'package:flutter/material.dart';

class AppbarTheme {
  AppbarTheme._();

  /*----------> Light Theme Data <----------*/
  static final lightThemeData = AppBarTheme(
    backgroundColor: const Color(0xFF0c1633),
    titleTextStyle: const TextStyle().copyWith(color: Colors.white),
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
  );

  /*----------> Dark Theme Data <----------*/
  static final darkThemeData = AppBarTheme(
    backgroundColor: const Color(0xFF0c1633),
    titleTextStyle: const TextStyle().copyWith(color: Colors.white),
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
