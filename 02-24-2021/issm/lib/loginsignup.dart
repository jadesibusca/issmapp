import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:issm/sign_in.dart';
import 'package:nice_button/NiceButton.dart';
import 'login.dart';

class LoginSignUp extends StatefulWidget {
  static const routeName = '/loginsignup';
  @override
  _LoginSignUp createState() => _LoginSignUp();
}

var firstColor = Color(0xff0477c2), secondColor = Color(0xff0082c4);

class _LoginSignUp extends State<LoginSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                Column(
                  children: [
                    DelayedDisplay(
                      slidingCurve: Curves.ease,
                      delay: Duration(seconds: 1),
                      child: Image.asset('assets/issm_logo.png',
                          height: 200, width: 200),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    DelayedDisplay(
                      slidingCurve: Curves.ease,
                      delay: Duration(seconds: 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          NiceButton(
                            width: 255,
                            elevation: 8.0,
                            radius: 52.0,
                            text: "Login",
                            background: null,
                            gradientColors: [secondColor, firstColor],
                            onPressed: () {
                              Navigator.of(context).pushNamed(Login.routeName);
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          NiceButton(
                            width: 255,
                            elevation: 8.0,
                            radius: 52.0,
                            text: "Sign Up",
                            background: null,
                            gradientColors: [secondColor, firstColor],
                            onPressed: () {
                              Navigator.of(context).pushNamed(SignIn.routeName);
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
