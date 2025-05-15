import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WColorScheme {
  const WColorScheme._();

  static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: WColors.primary,
    primary: WColors.primary,
    onPrimary: WColors.white,
    secondary: WColors.secondary,
    onSecondary: WColors.black,
    error: Colors.redAccent,
    onError: Colors.white,
  );

  static final darkColorScheme = ColorScheme.fromSeed(
    seedColor: WColors.primary,
    primary: WColors.primary,
    onPrimary: WColors.white,
    secondary: WColors.secondary,
    onSecondary: WColors.black,
    error: Colors.redAccent,
    onError: Colors.white,
  );
}
