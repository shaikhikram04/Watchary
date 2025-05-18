import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WElevatedButtonTheme {
  const WElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 4,
      backgroundColor: WColors.light.buttonBackground,
      foregroundColor: Colors.white,
      shadowColor: WColors.primary.withValues(alpha: 0.4),
      disabledBackgroundColor: WColors.light.buttonDisabled,
      disabledForegroundColor: WColors.light.textSecondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: WTextTheme.light.titleMedium,
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: WColors.dark.buttonBackground,
      foregroundColor: Colors.white,
      elevation: 8,
      shadowColor: WColors.secondary.withValues(alpha: 0.4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 18),
      disabledBackgroundColor: WColors.dark.buttonDisabled,
      disabledForegroundColor: WColors.dark.textSecondary,
      textStyle: WTextTheme.dark.titleMedium,
    ),
  );
}
