import 'package:flutter/material.dart';

class WColors {
  const WColors._();

  //* app basic colors
  static const Color primary = Color(0xFF1A2B4C);
  static const Color secondary = Color(0xFFFF8746);
  static const Color tertiary = Color(0xFFFFBB00);

  //* Gradient colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primary,
      secondary,
    ],
  );

  //* Text Colors
  static const Color textPrimary = primary; // Use brand primary for strong text
  static const Color textSecondary = Color(0xFF4F5B71); // Muted navy-grey
  static const Color textWhite = Color(0xFFFFFFFF);

  //* Background Colors
  static const Color light = Color(0xFFF8F9FB); // Soft blueish white
  static const Color dark = Color(0xFF121212); // True dark
  static const Color primaryBackground = Color(0xFFEFF3F8); // Light tone from primary

  //* Background Container Colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static Color darkContainer = const Color(0xFF1A2B4C).withValues(alpha: 0.1);

  //* Button Colors
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = secondary;
  static const Color buttonDisabled = Color(0xFFB0B0B0);

  //* Border Colors
  static const Color borderPrimary = Color(0xFFCDD5E0); // Light blue-grey
  static const Color borderSecondary = Color(0xFFE0E6ED);

  //* Status Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = tertiary; // Yellow-ish warning
  static const Color info = secondary; // Orange as alert/info accent

  //* Neutral Shades
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF7D7D7D);
  static const Color grey = Color(0xFFBDBDBD);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
}
