import 'package:flutter/material.dart';
import 'package:healsoon/core/landing_screen.dart';
import 'package:healsoon/core/splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(milliseconds: 1000)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Splash();
        } else {
          return LandingScreen();
        }
      },
    );
  }
}
