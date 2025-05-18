import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/app_bar_theme.dart';
import 'package:watchary/core/themes/custom_theme/card_theme.dart';
import 'package:watchary/core/themes/custom_theme/chip_theme.dart';
import 'package:watchary/core/themes/custom_theme/color_scheme.dart';
import 'package:watchary/core/themes/custom_theme/divider_theme.dart';
import 'package:watchary/core/themes/custom_theme/elevated_button_theme.dart';
import 'package:watchary/core/themes/custom_theme/outline_button_theme.dart';
import 'package:watchary/core/themes/custom_theme/text_button_theme.dart';
import 'package:watchary/core/themes/custom_theme/text_field_theme.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WTheme {
  const WTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    colorScheme: WColorScheme.lightColorScheme,
    scaffoldBackgroundColor: WColors.light.scaffold,
    cardTheme: WCardTheme.light,
    textTheme: WTextTheme.light,
    appBarTheme: WAppBarTheme.light,
    chipTheme: WChipTheme.lightChipTheme,
    dividerTheme: WDividerTheme.light,
    inputDecorationTheme: WTextFieldTheme.light,
    elevatedButtonTheme: WElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: WOutlinedButtonTheme.light,
    textButtonTheme: WTextButtonTheme.light,
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    colorScheme: WColorScheme.darkColorScheme,
    scaffoldBackgroundColor: WColors.dark.scaffold,
    cardTheme: WCardTheme.dark,
    textTheme: WTextTheme.dark,
    appBarTheme: WAppBarTheme.dark,
    chipTheme: WChipTheme.darkChipTheme,
    dividerTheme: WDividerTheme.dark,
    inputDecorationTheme: WTextFieldTheme.dark,
    elevatedButtonTheme: WElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: WOutlinedButtonTheme.dark,
    textButtonTheme: WTextButtonTheme.dark,
  );
}
