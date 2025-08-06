import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WDividerTheme {
  const WDividerTheme._();

  static final light = DividerThemeData(color: WColors.light.divider, thickness: 1);

  static final dark = DividerThemeData(color: WColors.dark.divider, thickness: 1);
}
