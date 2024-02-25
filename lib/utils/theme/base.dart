import 'package:flutter/material.dart';
import 'package:user_profile/utils/theme/appbar.dart';
import 'package:user_profile/utils/theme/text.dart';

import '../../common/constants/colors.dart';
import 'color_scheme.dart';
import 'elevated_button.dart';

class BaseTheme {
  BaseTheme._();

  /*----------> Light Theme Data <-----------*/
  static final lightTheme = ThemeData(
    appBarTheme: AppbarTheme.lightThemeData,
    brightness: Brightness.light,
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.lightBgColor,
    textTheme: AppsTextTheme.lightTextTheme,
    colorScheme: AppsColorScheme.lightColorScheme,
    fontFamily: "Poppins",
    elevatedButtonTheme: AppsElevatedButtonTheme.lightElevatedButtonTheme,
  );

  /*----------> Dark Theme Data <-----------*/
  static final darkTheme = ThemeData(
    appBarTheme: AppbarTheme.darkThemeData,
    brightness: Brightness.dark,
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.darkBgColor,
    textTheme: AppsTextTheme.darkTextTheme,
    colorScheme: AppsColorScheme.darkColorScheme,
    fontFamily: "Poppins",
    elevatedButtonTheme: AppsElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
