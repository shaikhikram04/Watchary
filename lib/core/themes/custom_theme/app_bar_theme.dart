import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/themes/custom_theme/text_theme.dart';

class WAppBarTheme {
  const WAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: WColors.primary,
    foregroundColor: WColors.white,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: WTextTheme.lightTextTheme.headlineSmall,
    actionsIconTheme: const IconThemeData(color: Colors.black, size: 24),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: WColors.primary,
    foregroundColor: WColors.white,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: WTextTheme.darkTextTheme.headlineSmall,
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24),
  );
}
