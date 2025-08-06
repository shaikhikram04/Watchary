import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WOutlinedButtonTheme {
  const WOutlinedButtonTheme._();

  static final light = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: WColors.primary,
      side: BorderSide(color: WColors.primary, width: 1.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      textStyle: WTextTheme.light.titleLarge,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    ),
  );

  static final dark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: WColors.secondary,
      side: BorderSide(color: WColors.secondary, width: 1.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      textStyle: WTextTheme.dark.titleLarge,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    ),
  );
}
