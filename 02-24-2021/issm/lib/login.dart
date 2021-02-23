import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:nice_button/NiceButton.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginState createState() => _LoginState();
}

var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

class _LoginState extends State<Login> {
  var _guardForm = GlobalKey<FormState>();
  TextEditingController guardEmail = TextEditingController();
  TextEditingController guardPassword = TextEditingController();
  bool _showPassword = true;
//asdasdass
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        elevation: 0,
        // toolbarHeight: 100,
        backgroundColor: Colors.indigo[900],
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     colorFilter:
        //         ColorFilter.mode(Colors.grey.withOpacity(0.7), BlendMode.color),
        //     image: AssetImage("assets/issm_logo.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/issm_logo.png',
                height: 150,
                width: 100,
              ),
              SizedBox(
                height: 50,
              ),
              DelayedDisplay(
                delay: Duration(seconds: 1),
                slidingCurve: Curves.easeInCirc,
                child: Container(
                  child: Form(
                    key: _guardForm,
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: guardEmail,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            labelStyle: TextStyle(color: Colors.white),
                            icon: Icon(
                              Icons.person,
                              color: Colors.blueGrey[100],
                            ),
                          ),
                          validator: MultiValidator(
                            [
                              EmailValidator(
                                  errorText: 'Enter a valid email address'),
                              MinLengthValidator(1,
                                  errorText: 'Password field empty')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: guardPassword,
                          obscureText: _showPassword,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.white),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.blueGrey[100],
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.blueGrey[100],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                              )),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Password required';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        NiceButton(
                          radius: 40,
                          padding: const EdgeInsets.all(15),
                          text: "Login",
                          icon: Icons.login,
                          gradientColors: [secondColor, firstColor],
                          background: null,
                          onPressed: () {
                            if (!_guardForm.currentState.validate()) {
                              return;
                            }
                            // Navigator.of(context)
                            //     .pushReplacementNamed(GuardVideoViewer.routeName);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
