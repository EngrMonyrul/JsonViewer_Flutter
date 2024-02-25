import 'package:flutter/material.dart';

class AppbarTheme {
  AppbarTheme._();

  /*----------> Light Theme Data <----------*/
  static final lightThemeData = AppBarTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: Colors.grey.withOpacity(0.7),
    titleTextStyle: const TextStyle().copyWith(color: Colors.white),
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
  );

  /*----------> Dark Theme Data <----------*/
  static final darkThemeData = AppBarTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: Colors.grey.withOpacity(0.7),
    titleTextStyle: const TextStyle().copyWith(color: Colors.white),
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
  );
}
