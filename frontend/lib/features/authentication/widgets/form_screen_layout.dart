import 'package:flutter/material.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/core/constants/sizes.dart';

class FormScreenLayout extends StatelessWidget {
  const FormScreenLayout({
    super.key,
    required this.formKey,
    required this.child,
  });

  final Widget child;
  final GlobalKey formKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [WColors.light.scaffold, WColors.light.surfaceVariant],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(WSizes.defaultSpace),
            child: Form(key: formKey, child: child),
          ),
        ),
      ),
    );
  }
}
