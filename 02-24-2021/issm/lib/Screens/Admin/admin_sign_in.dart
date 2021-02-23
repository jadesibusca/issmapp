import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class AdminLogIn extends StatefulWidget {
  @override
  _AdminLogInState createState() => _AdminLogInState();
}

class _AdminLogInState extends State<AdminLogIn> {
  var _adminForm = GlobalKey<FormState>();
  TextEditingController adminEmail = TextEditingController();
  TextEditingController adminPassword = TextEditingController();
  bool _showPassword = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.blueGrey[100]),
        child: DelayedDisplay(
          delay: Duration(seconds: 1),
          slidingCurve: Curves.bounceIn,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey[100],
                          offset: Offset(0, 3),
                          blurRadius: 10),
                    ]),
                child: Form(
                    key: _adminForm,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: adminEmail,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            icon: Icon(
                              Icons.person,
                              color: Colors.blueGrey[100],
                            ),
                          ),
                          validator: MultiValidator([
                            EmailValidator(
                                errorText: 'Enter a valid email address'),
                          ]),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: adminPassword,
                          obscureText: _showPassword,
                          decoration: InputDecoration(
                              labelText: 'Password',
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
                              return 'Password field empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton.icon(
                          color: Colors.blueGrey[100],
                          icon: Icon(
                            CupertinoIcons.arrow_up_right_circle,
                            size: 30,
                          ),
                          label: Text('SIGN IN'),
                          onPressed: () {
                            if (!_adminForm.currentState.validate()) {
                              return;
                            }
                          },
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
