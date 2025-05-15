import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WElevatedButtonTheme {
  const WElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: WColors.secondary,
      foregroundColor: WColors.white,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      side: const BorderSide(color: WColors.secondary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: WTextTheme.lightTextTheme.titleMedium,
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: WColors.secondary,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      side: const BorderSide(color: WColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: WTextTheme.darkTextTheme.titleMedium,
    ),
  );
}
