import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WCardTheme {
  const WCardTheme._();

  static final light = CardTheme(
    color: WColors.light.cardBackground,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static final dark = CardTheme(
    color: WColors.dark.cardBackground,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
