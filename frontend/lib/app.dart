import 'package:flutter/material.dart';
import 'package:watchary/core/themes/theme.dart';
import 'package:watchary/features/authentication/screens/welcome.dart';

class WatcharyApp extends StatelessWidget {
  const WatcharyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watchary',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: WTheme.lightTheme,
      darkTheme: WTheme.darkTheme,
      home: const WelcomeScreen(),
    );
  }
}
