import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/app_bar_theme.dart';
import 'package:watchary/core/themes/custom_theme/chip_theme.dart';
import 'package:watchary/core/themes/custom_theme/color_scheme.dart';
import 'package:watchary/core/themes/custom_theme/elevated_button_theme.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WTheme {
  const WTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: WColors.primary,
    scaffoldBackgroundColor: WColors.white,
    colorScheme: WColorScheme.lightColorScheme,
    textTheme: WTextTheme.lightTextTheme,
    appBarTheme: WAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: WElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: WChipTheme.lightChipTheme,
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: WColors.primary,
    scaffoldBackgroundColor: WColors.black,
    colorScheme: WColorScheme.darkColorScheme,
    textTheme: WTextTheme.darkTextTheme,
    appBarTheme: WAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: WElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: WChipTheme.darkChipTheme,
  );
}
