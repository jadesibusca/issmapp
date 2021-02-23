import 'package:flutter/material.dart';

import 'Screens/Admin/admin_sign_in.dart';
import 'Screens/Applicant/applicant_sign_in.dart';
import 'Screens/Guard/guard_sign_in.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/sign-in';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  List<String> labels = ["Applicant", "Security Guard", "Admin"];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 100,
            //centerTitle: true,
            /*Text(
            'LOG IN',
            style: TextStyle(
                color: Colors.blueGrey[900],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),*/
            leading: Icon(
              Icons.login_rounded,
              color: Colors.blue[900],
              size: 40,
            ),
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.blueGrey,
              isScrollable: true,
              indicatorPadding: EdgeInsets.all(10),
              unselectedLabelColor: Colors.blue,
              tabs: [
                Tab(
                  text: 'Applicant',
                ),
                Tab(
                  text: 'Security Guard',
                ),
                Tab(text: 'Admin'),
              ],
            ),
            title: Text(
              'LOG IN AS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 30),
            )),
        body: TabBarView(
          children: [
            ApplicantSignIn(),
            GuardSignIn(),
            AdminLogIn(),
          ],
        ),
      ),
    );
  }
}
