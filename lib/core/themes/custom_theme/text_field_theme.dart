import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WTextFieldTheme {
  const WTextFieldTheme._();

  static InputDecorationTheme light = InputDecorationTheme(
    filled: true,
    fillColor: WColors.light.inputFill,
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: WTextTheme.light.bodyMedium,
    hintStyle: WTextTheme.light.bodyMedium,
    errorStyle: const TextStyle().copyWith(fontWeight: FontWeight.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: WColors.light.textSecondary),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: WColors.light.outline),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: WColors.light.outline),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1.5, color: WColors.primary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: WColors.error, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: WColors.warning),
    ),
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    filled: true,
    fillColor: WColors.dark.inputFill,
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: WTextTheme.dark.bodyMedium,
    hintStyle: WTextTheme.dark.bodyMedium,
    errorStyle: const TextStyle().copyWith(fontWeight: FontWeight.normal, color: Colors.red),
    floatingLabelStyle: const TextStyle().copyWith(color: WColors.dark.textSecondary),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: WColors.dark.outline),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: WColors.dark.outline),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: WColors.secondary, width: 1.5),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: WColors.error, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: WColors.warning),
    ),
  );
}
