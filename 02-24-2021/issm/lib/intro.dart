import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'loginsignup.dart';

class Intro extends StatelessWidget {
  static const routeName = '/intro';
  @override
  Widget build(BuildContext context) {
    return new AnimatedSplashScreen(
      nextScreen: LoginSignUp(),
      splash: Image.asset('assets/issm_logo.png'),
      splashIconSize: 300,
      animationDuration: Duration(seconds: 1),
      backgroundColor: Colors.indigo[900],
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}

//asdasda
