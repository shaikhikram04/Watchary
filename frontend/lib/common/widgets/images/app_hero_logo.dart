import 'package:flutter/material.dart';
import 'package:watchary/core/constants/sizes.dart';

class AppHeroLogo extends StatelessWidget {
  const AppHeroLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'app_logo',
        child: Container(
          width: WSizes.logoImageSize,
          height: WSizes.logoImageSize,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(WSizes.borderRadiusXxl)),
          child: Image.asset(
            'assets/logos/Watchary-logo-without-txt-light.png',
          ),
        ),
      ),
    );
  }
}
