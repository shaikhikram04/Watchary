import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WTextTheme {
  const WTextTheme._();

  static TextTheme lightTextTheme = const TextTheme().copyWith(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      color: WColors.black,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      color: WColors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      color: WColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.black,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.black,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.black.withValues(alpha: 0.5),
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.black.withValues(alpha: 0.5),
      fontWeight: FontWeight.normal,
    ),
  );

  static TextTheme darkTextTheme = const TextTheme().copyWith(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      color: WColors.white,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      color: WColors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      color: WColors.white,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.white,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.white,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.white,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.white,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.white,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.white.withValues(alpha: 0.5),
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.white,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.white.withValues(alpha: 0.5),
      fontWeight: FontWeight.normal,
    ),
  );
}
