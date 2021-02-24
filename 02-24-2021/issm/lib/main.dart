import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:issm/Screens/Applicant/applicant_fillup_form.dart';
import 'package:issm/Screens/Guard/guard_video_viewing.dart';
import 'package:issm/intro.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'Screens/Applicant/applicant__p9_icf.dart';
import 'login.dart';
import 'sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(
      debug: true // optional: set false to disable printing logs to console
      );
  runApp(MyApp());
}

//QXX
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.blueGrey[600],
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.blueGrey[900],
          systemNavigationBarIconBrightness: Brightness.dark),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Barlow'),
      home: ResponsiveWrapper.builder(
        Intro(),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(480, name: TABLET),
          // ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          // ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      routes: {
        Intro.routeName: (context) => Intro(),
        ApplicantFillUpForm.routeName: (context) => ApplicantFillUpForm(),
        GuardVideoViewer.routeName: (context) => GuardVideoViewer(),
        SignIn.routeName: (context) => SignIn(),
        Login.routeName: (context) => Login(),
        ApplicantICF.routeName: (context) => ApplicantICF(),
      },
    );
  }
}
