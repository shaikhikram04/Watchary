import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';

class WTextTheme {
  const WTextTheme._();

  static TextTheme light = const TextTheme().copyWith(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.light.textSecondary,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.light.textPrimary,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.light.textSecondary,
      fontWeight: FontWeight.normal,
    ),
  );

  static TextTheme dark = const TextTheme().copyWith(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      color: WColors.dark.textSecondary,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.dark.textPrimary,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      color: WColors.dark.textSecondary,
      fontWeight: FontWeight.normal,
    ),
  );
}
