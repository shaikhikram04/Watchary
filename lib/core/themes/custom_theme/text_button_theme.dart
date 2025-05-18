import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WTextButtonTheme {
  const WTextButtonTheme._();

  static final light = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: WColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  static final dark = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: WColors.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
