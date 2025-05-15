import 'package:flutter/material.dart';
import 'package:watchary/core/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: WTheme.lightTheme,
      darkTheme: WTheme.darkTheme,
    );
  }
}
