import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class TOutlineButtonTheme {
  static final light = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: WColors.secondary,
      side: BorderSide(color: WColors.secondary, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    ),
  );

  // static const dark = ;
}
