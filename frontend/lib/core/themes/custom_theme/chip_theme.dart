import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WChipTheme {
  const WChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: WColors.light.chipBackground,
    disabledColor: WColors.light.buttonDisabled,
    labelStyle:  TextStyle(color: WColors.light.textPrimary),
    selectedColor: WColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: WColors.light.textPrimary,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    backgroundColor: WColors.dark.chipBackground,
    disabledColor: WColors.dark.buttonDisabled,
    labelStyle: TextStyle(color: WColors.dark.textPrimary),
    selectedColor: WColors.secondary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: WColors.dark.textPrimary,
  );
}
