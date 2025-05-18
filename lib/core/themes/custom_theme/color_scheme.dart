import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WColorScheme {
  const WColorScheme._();

  static final lightColorScheme = ColorScheme.light(
    primary: WColors.primary,
    secondary: WColors.secondary,
    tertiary: WColors.tertiary,
    error: WColors.error,
    surface: WColors.light.surface,
    onPrimary: WColors.light.textPrimary,
    onSecondary: WColors.light.textPrimary,
    onSurface: WColors.light.textPrimary,
  );

  static final darkColorScheme = ColorScheme.dark(
    primary: WColors.secondary, // Using secondary as primary in dark mode
    secondary: WColors.tertiary,
    tertiary: WColors.coral,
    error: WColors.error,
    surface: WColors.dark.surface,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: WColors.dark.textPrimary,
  );
}
