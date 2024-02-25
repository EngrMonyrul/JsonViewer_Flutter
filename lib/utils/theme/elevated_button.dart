import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';

class AppsElevatedButtonTheme {
  AppsElevatedButtonTheme._();

  /*-----------------> Light Theme <-----------------*/
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.darkBgColor.withOpacity(0.5),
      elevation: 0,
      foregroundColor: Colors.white,
    ),
  );

  /*-----------------> Dark Theme <-----------------*/
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.darkBgColor.withOpacity(0.5),
      elevation: 0,
      foregroundColor: Colors.white,
    ),
  );
}
