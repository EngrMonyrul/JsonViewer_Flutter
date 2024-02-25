import 'package:flutter/cupertino.dart';

class Responsive {
  Responsive._();

  /*---------------------------> Responsive: Mobile View <-----------------------------*/
  static bool isMobile({required BuildContext context}) => MediaQuery.of(context).size.width <= 500;

  /*---------------------------> Responsive: Mobile Large View <-----------------------------*/
  static bool isLargeMobile({required BuildContext context}) => MediaQuery.of(context).size.width <= 700 && MediaQuery.of(context).size.width > 500;

  /*---------------------------> Responsive: Tablet View <-----------------------------*/
  static bool isTablet({required BuildContext context}) => MediaQuery.of(context).size.width <= 1024 && MediaQuery.of(context).size.width > 700;

  /*---------------------------> Responsive: Desktop or Laptop View <-----------------------------*/
  static bool isDeskOrLap({required BuildContext context}) => MediaQuery.of(context).size.width > 1024;
}
