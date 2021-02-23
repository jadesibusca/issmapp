import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ApplicationICFcontrolNum extends StatelessWidget {
  const ApplicationICFcontrolNum({
    Key key,
    @required this.applicationICFcontrolNum,
  }) : super(key: key);

  final TextEditingController applicationICFcontrolNum;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFcontrolNum,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Control No. (For Agency use only)'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator: MinLengthValidator(1, errorText: 'Control No. required'),
    );
  }
}

class ApplicationICFdateRec extends StatefulWidget {
  @override
  _ApplicationICFdateRecState createState() => _ApplicationICFdateRecState();
}

class _ApplicationICFdateRecState extends State<ApplicationICFdateRec> {
  DateTime date = DateTime.now();
  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1940),
        lastDate: DateTime(2050));

    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectTimePicker(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Date Received (For Agency Use only) ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Color(0x66006677),
                        ),
                        Spacer(),
                        Text(
                          date.month.toString() +
                              '/' +
                              date.day.toString() +
                              '/' +
                              date.year.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ApplicationICFEname extends StatelessWidget {
  const ApplicationICFEname({
    Key key,
    @required this.applicationICFEName,
  }) : super(key: key);

  final TextEditingController applicationICFEName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFEName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Employer Name'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator: MinLengthValidator(1, errorText: 'Employer Name required'),
    );
  }
}

class ApplicationICFEaddTel extends StatelessWidget {
  const ApplicationICFEaddTel({
    Key key,
    @required this.applicationICFEaddTel,
  }) : super(key: key);

  final TextEditingController applicationICFEaddTel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFEaddTel,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Employer Address and Telephone'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator: MinLengthValidator(1,
          errorText: 'Employer Address and Telephone required'),
    );
  }
}

class ApplicationICFFID extends StatelessWidget {
  const ApplicationICFFID({
    Key key,
    @required this.applicationICFFID,
  }) : super(key: key);

  final TextEditingController applicationICFFID;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFFID,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Employer Federal ID Number (EIN)'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator: MinLengthValidator(1,
          errorText: 'Employer Federal ID Number required'),
    );
  }
}

class ApplicationICFappN extends StatelessWidget {
  const ApplicationICFappN({
    Key key,
    @required this.applicationICFappN,
  }) : super(key: key);

  final TextEditingController applicationICFappN;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFappN,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Applicant Name (Last, First, MI)'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator: MinLengthValidator(1, errorText: 'Applicant Name required'),
    );
  }
}

class ApplicationICFSSN extends StatelessWidget {
  const ApplicationICFSSN({
    Key key,
    @required this.applicationICFSSN,
  }) : super(key: key);

  final TextEditingController applicationICFSSN;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFSSN,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Social Security Number'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator:
          MinLengthValidator(1, errorText: 'Social Security Number required'),
    );
  }
}

class ApplicationICFhaveWorked extends StatefulWidget {
  const ApplicationICFhaveWorked({
    Key key,
    this.where,
    this.when,
  }) : super(key: key);

  static String workedBefore;
  final TextEditingController where;
  final TextEditingController when;

  static String appliedWhere;
  static String appliedWhen;
  static bool hide = false;

  @override
  _ApplicationICFhaveWorkedState createState() =>
      _ApplicationICFhaveWorkedState();
}

class _ApplicationICFhaveWorkedState extends State<ApplicationICFhaveWorked> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Question : Ever applied to this company before?
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Have you worked for this employer before? ',
            style: TextStyle(fontSize: 16),
          ),
          Row(
            children: [
              Radio(
                value: 'Yes',
                onChanged: (value) {
                  ApplicationICFhaveWorked.workedBefore = value;
                  if (ApplicationICFhaveWorked.workedBefore == 'Yes') {
                    setState(() {
                      ApplicationICFhaveWorked.hide = true;
                    });
                  }
                },
                groupValue: ApplicationICFhaveWorked.workedBefore,
              ),
              Text('Yes'),
              Radio(
                value: 'No',
                onChanged: (value) {
                  ApplicationICFhaveWorked.workedBefore = value;

                  if (ApplicationICFhaveWorked.workedBefore == 'No') {
                    setState(() {
                      ApplicationICFhaveWorked.hide = false;
                    });
                  }
                },
                groupValue: ApplicationICFhaveWorked.workedBefore,
              ),
              Text('No')
            ],
          ),
        ],
      ),
    );
  }
}

class ApplicationICFsDate extends StatefulWidget {
  @override
  _ApplicationICFsDateState createState() => _ApplicationICFsDateState();
}

class _ApplicationICFsDateState extends State<ApplicationICFsDate> {
  DateTime date = DateTime.now();
  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1940),
        lastDate: DateTime(2050));

    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectTimePicker(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Employment Start Date',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Color(0x66006677),
                        ),
                        Spacer(),
                        Text(
                          date.month.toString() +
                              '/' +
                              date.day.toString() +
                              '/' +
                              date.year.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ApplicationICFsWage extends StatelessWidget {
  const ApplicationICFsWage({
    Key key,
    @required this.applicationICFsWage,
  }) : super(key: key);

  final TextEditingController applicationICFsWage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFsWage,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Starting Wage'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator: MinLengthValidator(1, errorText: 'Starting Wage required'),
    );
  }
}

class ApplicationICFpos extends StatelessWidget {
  const ApplicationICFpos({
    Key key,
    @required this.applicationICFpos,
  }) : super(key: key);

  final TextEditingController applicationICFpos;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicationICFpos,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Position'),
      //   onSaved: (value) {
      //     controlNum = value;
      //   },
      validator: MinLengthValidator(1, errorText: 'Position required'),
    );
  }
}

class ApplicationICFl16un40 extends StatefulWidget {
  const ApplicationICFl16un40({
    Key key,
    this.where,
    this.when,
  }) : super(key: key);

  static String age1640;
  final TextEditingController where;
  final TextEditingController when;

  static String appliedWhere;
  static String appliedWhen;
  static bool hide = false;

  @override
  _ApplicationICFl16un40State createState() => _ApplicationICFl16un40State();
}

class _ApplicationICFl16un40State extends State<ApplicationICFl16un40> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Question : Are you at least age 16, but under age 40?
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Are you at least age 16, but under age 40? ',
            style: TextStyle(fontSize: 16),
          ),
          Row(
            children: [
              Radio(
                value: 'Yes',
                onChanged: (value) {
                  ApplicationICFl16un40.age1640 = value;
                  if (ApplicationICFl16un40.age1640 == 'Yes') {
                    setState(() {
                      ApplicationICFl16un40.hide = true;
                    });
                  }
                },
                groupValue: ApplicationICFl16un40.age1640,
              ),
              Text('Yes'),
              Radio(
                value: 'No',
                onChanged: (value) {
                  ApplicationICFl16un40.age1640 = value;

                  if (ApplicationICFl16un40.age1640 == 'No') {
                    setState(() {
                      ApplicationICFl16un40.hide = false;
                    });
                  }
                },
                groupValue: ApplicationICFl16un40.age1640,
              ),
              Text('No')
            ],
          ),
          //Question :IF YES
          Visibility(
            visible: ApplicationICFl16un40.hide,
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    TextFormField(
                      controller: widget.where,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        labelText: 'If YES, enter your date of birth',
                        labelStyle: TextStyle(fontSize: 16),
                        border: UnderlineInputBorder(),
                      ),
                      onSaved: (value) {
                        ApplicationICFl16un40.appliedWhere = value;
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class ApplicationICFvetUSAF1 extends StatefulWidget {
  const ApplicationICFvetUSAF1({
    Key key,
    this.where,
    this.when,
  }) : super(key: key);

  static String vetusaf1;
  static String vetusaf2;
  static String vetusaf3;
  static String vetusaf4;
  static String vetusaf5;
  final TextEditingController where;
  final TextEditingController when;
  static bool hide = false;
  static bool hide1 = false;
  static bool hide2 = false;
  static bool hide4 = false;
  static bool hide5 = false;

  @override
  _ApplicationICFvetUSAF1State createState() => _ApplicationICFvetUSAF1State();
}

class _ApplicationICFvetUSAF1State extends State<ApplicationICFvetUSAF1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Question : Are you a Veteran of the U.S. Armed Forces?
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Are you a Veteran of the U.S. Armed Forces? ',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'If NO, go to Box 14.',
            style: TextStyle(fontSize: 16),
          ),

          Row(
            children: [
              Radio(
                value: 'Yes',
                onChanged: (value1) {
                  ApplicationICFvetUSAF1.vetusaf1 = value1;
                  if (ApplicationICFvetUSAF1.vetusaf1 == 'Yes') {
                    setState(() {
                      ApplicationICFvetUSAF1.hide = true;
                    });
                  }
                },
                groupValue: ApplicationICFvetUSAF1.vetusaf1,
              ),
              Text('Yes'),
              Radio(
                value: 'No',
                onChanged: (value1) {
                  ApplicationICFvetUSAF1.vetusaf1 = value1;

                  if (ApplicationICFvetUSAF1.vetusaf1 == 'No') {
                    setState(() {
                      ApplicationICFvetUSAF1.hide = false;
                    });
                  }
                },
                groupValue: ApplicationICFvetUSAF1.vetusaf1,
              ),
              Text('No'),
            ],
          ),

          //Question :IF YES
          Visibility(
            visible: ApplicationICFvetUSAF1.hide,
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      'If YES, are you a member of a family that received Supplemental Nutrition Assistance Program (SNAP) benefits (Food Stamps) for at least 3 months during the 16 months before you were hired?',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Yes',
                          onChanged: (value2) {
                            ApplicationICFvetUSAF1.vetusaf2 = value2;
                            if (ApplicationICFvetUSAF1.vetusaf2 == 'Yes') {
                              setState(() {
                                ApplicationICFvetUSAF1.hide1 = true;
                              });
                            }
                          },
                          groupValue: ApplicationICFvetUSAF1.vetusaf2,
                        ),
                        Text('Yes'),
                        Radio(
                          value: 'No',
                          onChanged: (value2) {
                            ApplicationICFvetUSAF1.vetusaf2 = value2;

                            if (ApplicationICFvetUSAF1.vetusaf2 == 'No') {
                              setState(() {
                                ApplicationICFvetUSAF1.hide1 = false;
                              });
                            }
                          },
                          groupValue: ApplicationICFvetUSAF1.vetusaf2,
                        ),
                        Text('No'),
                      ],
                    ),
                    Visibility(
                      visible: ApplicationICFvetUSAF1.hide1,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                                'If YES, enter name of primary recipient and city and state where benefits were received'),
                            TextFormField(
                              controller: widget.where,
                              keyboardType: TextInputType.streetAddress,
                              decoration: InputDecoration(
                                labelText:
                                    'Enter name of primary recipient and city and state.',
                                labelStyle: TextStyle(fontSize: 16),
                                border: UnderlineInputBorder(),
                              ),
                              onSaved: (value) {
                                ApplicationICFl16un40.appliedWhere = value;
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                'OR, are you a veteran entitled to compensation for a service-connected disability?'),
                            Row(
                              children: [
                                Radio(
                                  value: 'Yes',
                                  onChanged: (value3) {
                                    ApplicationICFvetUSAF1.vetusaf3 = value3;
                                    if (ApplicationICFvetUSAF1.vetusaf3 ==
                                        'Yes') {
                                      setState(() {
                                        ApplicationICFvetUSAF1.hide2 = true;
                                      });
                                    }
                                  },
                                  groupValue: ApplicationICFvetUSAF1.vetusaf3,
                                ),
                                Text('Yes'),
                                Radio(
                                  value: 'No',
                                  onChanged: (value3) {
                                    ApplicationICFvetUSAF1.vetusaf3 = value3;

                                    if (ApplicationICFvetUSAF1.vetusaf3 ==
                                        'No') {
                                      setState(() {
                                        ApplicationICFvetUSAF1.hide2 = false;
                                      });
                                    }
                                  },
                                  groupValue: ApplicationICFvetUSAF1.vetusaf3,
                                ),
                                Text('No'),
                              ],
                            ),
                            Visibility(
                              visible: ApplicationICFvetUSAF1.hide2,
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'If YES, were you discharged or released from active duty within a year before you were hired?',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: 'Yes',
                                          onChanged: (value4) {
                                            ApplicationICFvetUSAF1.vetusaf4 =
                                                value4;
                                            if (ApplicationICFvetUSAF1
                                                    .vetusaf4 ==
                                                'Yes') {
                                              setState(() {
                                                ApplicationICFvetUSAF1.hide4 =
                                                    true;
                                              });
                                            }
                                          },
                                          groupValue:
                                              ApplicationICFvetUSAF1.vetusaf4,
                                        ),
                                        Text('Yes'),
                                        Radio(
                                          value: 'No',
                                          onChanged: (value4) {
                                            ApplicationICFvetUSAF1.vetusaf4 =
                                                value4;

                                            if (ApplicationICFvetUSAF1
                                                    .vetusaf4 ==
                                                'No') {
                                              setState(() {
                                                ApplicationICFvetUSAF1.hide4 =
                                                    false;
                                              });
                                            }
                                          },
                                          groupValue:
                                              ApplicationICFvetUSAF1.vetusaf4,
                                        ),
                                        Text('No'),
                                      ],
                                    ),
                                    Visibility(
                                      visible: ApplicationICFvetUSAF1.hide4,
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Text(
                                                'OR, were you unemployed for a combined period of at least 6 months (whether or not consecutive) during the year before you were hired?'),
                                            Row(
                                              children: [
                                                Radio(
                                                  value: 'Yes',
                                                  onChanged: (value5) {
                                                    ApplicationICFvetUSAF1
                                                        .vetusaf5 = value5;
                                                    if (ApplicationICFvetUSAF1
                                                            .vetusaf5 ==
                                                        'Yes') {
                                                      setState(() {
                                                        ApplicationICFvetUSAF1
                                                            .hide5 = true;
                                                      });
                                                    }
                                                  },
                                                  groupValue:
                                                      ApplicationICFvetUSAF1
                                                          .vetusaf5,
                                                ),
                                                Text('Yes'),
                                                Radio(
                                                  value: 'No',
                                                  onChanged: (value5) {
                                                    ApplicationICFvetUSAF1
                                                        .vetusaf5 = value5;

                                                    if (ApplicationICFvetUSAF1
                                                            .vetusaf5 ==
                                                        'No') {
                                                      setState(() {
                                                        ApplicationICFvetUSAF1
                                                            .hide5 = false;
                                                      });
                                                    }
                                                  },
                                                  groupValue:
                                                      ApplicationICFvetUSAF1
                                                          .vetusaf5,
                                                ),
                                                Text('No'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class ApplicationICFSNAP extends StatefulWidget {
  const ApplicationICFSNAP({
    Key key,
    this.primary,
    this.city,
    this.state,
    this.applicationICFSNAP,
  }) : super(key: key);

  static String snap;
  static String snap1;
  static bool hide = false;
  static bool hide1 = false;
  final TextEditingController primary;
  final TextEditingController city;
  final TextEditingController state;
  final TextEditingController applicationICFSNAP;

  @override
  _ApplicationICFSNAPState createState() => _ApplicationICFSNAPState();
}

class _ApplicationICFSNAPState extends State<ApplicationICFSNAP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              '14. Are you a member of a family that received Supplemental Nutrition Assistance Program(SNAP) (formerly Food Stamps) benefits for the 6 months before you were hired?'),
          Row(
            children: [
              Radio(
                value: 'Yes',
                onChanged: (value) {
                  ApplicationICFSNAP.snap = value;
                  if (ApplicationICFSNAP.snap == 'Yes') {
                    setState(() {
                      ApplicationICFSNAP.hide = true;
                    });
                  }
                },
                groupValue: ApplicationICFSNAP.snap,
              ),
              Text('Yes'),
              Radio(
                value: 'No',
                onChanged: (value) {
                  ApplicationICFSNAP.snap = value;

                  if (ApplicationICFSNAP.snap == 'No') {
                    setState(() {
                      ApplicationICFSNAP.hide = false;
                    });
                  }
                },
                groupValue: ApplicationICFSNAP.snap,
              ),
              Text('No'),
            ],
          ),
          Text(
              'OR, received SNAP benefits for at least a 3-month period within the last 5 months.'),
          SizedBox(height: 10),
          Text('But you are no longer receiving them?'),
          Row(
            children: [
              Radio(
                value: 'Yes',
                onChanged: (value1) {
                  ApplicationICFSNAP.snap1 = value1;
                  if (ApplicationICFSNAP.snap1 == 'Yes') {
                    setState(() {
                      ApplicationICFSNAP.hide = true;
                    });
                  }
                },
                groupValue: ApplicationICFSNAP.snap1,
              ),
              Text('Yes'),
              Radio(
                value: 'No',
                onChanged: (value1) {
                  ApplicationICFSNAP.snap1 = value1;

                  if (ApplicationICFSNAP.snap1 == 'No') {
                    setState(() {
                      ApplicationICFSNAP.hide = false;
                    });
                  }
                },
                groupValue: ApplicationICFSNAP.snap1,
              ),
              Text('No'),
            ],
          ),
          Visibility(
            visible: ApplicationICFSNAP.hide,
            child: Container(
              child: Column(
                children: [
                  Text(
                      'If YES to either question, enter name of primary recipient,city and state where benefits were received.'),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: widget.primary,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Primary Recipient'),
                    //   onSaved: (value) {
                    //     controlNum = value;
                    //   },
                    validator:
                        MinLengthValidator(1, errorText: 'Input required'),
                  ),
                  SizedBox(
                    height: (10),
                  ),
                  TextFormField(
                    controller: widget.city,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'City'),
                    //   onSaved: (value) {
                    //     controlNum = value;
                    //   },
                    validator:
                        MinLengthValidator(1, errorText: 'Input required'),
                  ),
                  SizedBox(
                    height: (10),
                  ),
                  TextFormField(
                    controller: widget.state,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'State'),
                    //   onSaved: (value) {
                    //     controlNum = value;
                    //   },
                    validator:
                        MinLengthValidator(1, errorText: 'Input required'),
                  ),
                  SizedBox(
                    height: (10),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
