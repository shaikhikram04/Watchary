import 'package:flutter/material.dart';

/// Reusable scheme holder
class _WThemeColor {
  // Background surfaces
  final Color scaffold;
  final Color surface;
  final Color surfaceVariant;

  // Text colors
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;

  // Functional UI elements
  final Color divider;
  final Color outline;
  final Color inputFill;

  // Component-specific
  final Color cardBackground;
  final Color chipBackground;
  final Color tooltipBackground;

  // Button states
  final Color buttonBackground;
  final Color buttonDisabled;
  final Color buttonHover;

  const _WThemeColor({
    required this.scaffold,
    required this.surfaceVariant,
    required this.surface,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.divider,
    required this.outline,
    required this.inputFill,
    required this.cardBackground,
    required this.chipBackground,
    required this.tooltipBackground,
    required this.buttonBackground,
    required this.buttonDisabled,
    required this.buttonHover,
  });
}

class WColors {
  const WColors._();

  /// Brand Identity Colors - Consistent across themes
  static const Color primary = Color(0xFF1A2B4C); // Deep navy blue
  static const Color secondary = Color(0xFFFF8746); // Vibrant orange
  static const Color tertiary = Color(0xFFFFBB00); // Golden yellow
  static const Color accent = Color(0xFF3F51B5); // Indigo

  /// Enhanced Brand Palette - Additional accent colors
  static const Color coral = Color(0xFFFF5C5C); // Vibrant coral for accents
  static const Color teal = Color(0xFF26A69A); // Calming teal for balance
  static const Color lavender = Color(0xFF9C27B0); // Rich purple for premium elements

  /// System Status Colors - Consistent across themes
  static const Color error = Color(0xFFD32F2F); // Error red
  static const Color success = Color(0xFF388E3C); // Success green
  static const Color warning = Color(0xFFFFA000); // Warning amber
  static const Color info = Color(0xFF2196F3); // Info blue

  /// Gradient Collections
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, Color(0xFF2A3F68)], // Deep navy gradient
  );

  static const Gradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, tertiary], // Orange to gold gradient
  );

  static const Gradient sunsetGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [coral, secondary], // Coral to orange gradient
  );

  static const Gradient oceanGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, teal], // Navy to teal gradient
  );

  static const light = _WThemeColor(
    scaffold: Color(0xFFF8F9FB),
    surfaceVariant: Color(0xFFFFFFFF),
    surface: Color(0xFFF2F4F8),
    textPrimary: Color(0xFF1A2B4C),
    textSecondary: Color(0xFF4F5B71),
    textTertiary: Color(0xFF8E99AF),
    divider: Color(0xFFE0E6ED),
    outline: Color(0xFFCDD5E0),
    inputFill: Color(0xFFF5F8FC),
    cardBackground: Color(0xFFFFFFFF),
    chipBackground: Color(0xFFEEF2F8),
    tooltipBackground: Color(0xFF2A3F68),
    buttonBackground: primary,
    buttonDisabled: Color(0xFFCCCCCC),
    buttonHover: Color(0xFF2A3F68),
  );

  static const dark = _WThemeColor(
    scaffold: Color(0xFF121212),
    surfaceVariant: Color(0xFF1E1E1E),
    surface: Color(0xFF2C2C2C),
    textPrimary: Color(0xFFF8F9FB),
    textSecondary: Color(0xFFBBC0C9),
    textTertiary: Color(0xFF8A8D96),
    divider: Color(0xFF323232),
    outline: Color(0xFF444444),
    inputFill: Color(0xFF2A2A2A),
    cardBackground: Color(0xFF262626),
    chipBackground: Color(0xFF323232),
    tooltipBackground: Color(0xFF3F4D6B),
    buttonBackground: secondary,
    buttonDisabled: Color(0xFF555555),
    buttonHover: Color(0xFFFF9D65),
  );
}

/// Theme extension to provide dynamic colors based on theme mode
extension ColorSchemeExt on ColorScheme {
  // Access the correct color based on current theme
  Color get surfaceColor => brightness == Brightness.light ? WColors.light.surface : WColors.dark.surface;

  Color get textPrimaryColor => brightness == Brightness.light ? WColors.light.textPrimary : WColors.dark.textPrimary;

  Color get textSecondaryColor =>
      brightness == Brightness.light ? WColors.light.textSecondary : WColors.dark.textSecondary;

  Color get cardColor => brightness == Brightness.light ? WColors.light.cardBackground : WColors.dark.cardBackground;
}
