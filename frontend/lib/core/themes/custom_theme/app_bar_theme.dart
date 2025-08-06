import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WAppBarTheme {
  const WAppBarTheme._();

  static final AppBarTheme light = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: WColors.light.surface,
    foregroundColor: WColors.light.textPrimary,
    iconTheme: IconThemeData(color: WColors.light.textPrimary, size: 24),
    titleTextStyle: WTextTheme.light.headlineSmall,
    actionsIconTheme: IconThemeData(color: WColors.light.textPrimary, size: 24),
  );

  static final AppBarTheme dark = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: WColors.dark.surface,
    foregroundColor: WColors.dark.textPrimary,
    iconTheme: IconThemeData(color: WColors.dark.textPrimary, size: 24),
    titleTextStyle: WTextTheme.dark.headlineSmall,
    actionsIconTheme: IconThemeData(color: WColors.dark.textPrimary, size: 24),
  );
}
