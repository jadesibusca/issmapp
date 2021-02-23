import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ApplicantPosition extends StatelessWidget {
  const ApplicantPosition({
    Key key,
    @required this.position,
  }) : super(key: key);

  final TextEditingController position;
  static String desiredPosition;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: position,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Desired position',
        labelText: 'Position :',
        labelStyle: TextStyle(fontSize: 20),
        border: UnderlineInputBorder(),
      ),
      onSaved: (value) {
        desiredPosition = value;
      },
    );
  }
}

class ApplicantDateCanStart extends StatelessWidget {
  const ApplicantDateCanStart({
    Key key,
    @required this.dateYouCanStart,
  }) : super(key: key);

  final TextEditingController dateYouCanStart;
  static String applicantDateYouCanStart;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: dateYouCanStart,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: 'YYYY-MM-DD',
        labelText: 'Date you can start :',
        labelStyle: TextStyle(fontSize: 20),
        border: UnderlineInputBorder(),
      ),
      validator: DateValidator('Year-Month-Day', errorText: 'Invalid Date'),
      onSaved: (value) {
        applicantDateYouCanStart = value;
      },
    );
  }
}

class ApplicantCurrentlyEmployed extends StatefulWidget {
  const ApplicantCurrentlyEmployed({
    Key key,
  }) : super(key: key);

  static String currentlyEmployed;
  static String currentEmployer;
  static bool hide = false;

  @override
  _ApplicantCurrentlyEmployedState createState() =>
      _ApplicantCurrentlyEmployedState();
}

class _ApplicantCurrentlyEmployedState
    extends State<ApplicantCurrentlyEmployed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Are you currently employed:',
            style: TextStyle(fontSize: 16),
          ),
          Row(
            children: [
              Radio(
                value: 'Yes',
                activeColor: Colors.grey,
                onChanged: (value) {
                  ApplicantCurrentlyEmployed.currentlyEmployed = value;

                  if (ApplicantCurrentlyEmployed.currentlyEmployed == 'Yes') {
                    setState(() {
                      ApplicantCurrentlyEmployed.hide = true;
                    });
                  }
                },
                groupValue: ApplicantCurrentlyEmployed.currentlyEmployed,
              ),
              Text('Yes'),
              Radio(
                value: 'No',
                activeColor: Colors.grey,
                onChanged: (value) {
                  ApplicantCurrentlyEmployed.currentlyEmployed = value;

                  if (ApplicantCurrentlyEmployed.currentlyEmployed == 'No') {
                    setState(() {
                      ApplicantCurrentlyEmployed.hide = false;
                    });
                  }
                },
                groupValue: ApplicantCurrentlyEmployed.currentlyEmployed,
              ),
              Text('No')
            ],
          ),
          //Question : If so may we inquire of yout present employer
          Visibility(
            visible: ApplicantCurrentlyEmployed.hide,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'If so may we inquire of your present employer',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 'Yes',
                          activeColor: Colors.grey,
                          groupValue:
                              ApplicantCurrentlyEmployed.currentEmployer,
                          onChanged: (value) {
                            ApplicantCurrentlyEmployed.currentEmployer = value;

                            setState(() {});
                          }),
                      Text('Yes'),
                      Radio(
                        value: 'No',
                        activeColor: Colors.grey,
                        groupValue: ApplicantCurrentlyEmployed.currentEmployer,
                        onChanged: (value) {
                          ApplicantCurrentlyEmployed.currentEmployer = value;
                          setState(() {});
                        },
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
    );
  }
}

class ApplicantAppliedBefore extends StatefulWidget {
  const ApplicantAppliedBefore({
    Key key,
    this.where,
    this.when,
  }) : super(key: key);

  static String appliedBefore;
  final TextEditingController where;
  final TextEditingController when;

  static String appliedWhere;
  static String appliedWhen;
  static bool hide = false;

  @override
  _ApplicantAppliedBeforeState createState() => _ApplicantAppliedBeforeState();
}

class _ApplicantAppliedBeforeState extends State<ApplicantAppliedBefore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Question : Ever applied to this company before?
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ever applied to this company before?',
            style: TextStyle(fontSize: 16),
          ),
          Row(
            children: [
              Radio(
                value: 'Yes',
                onChanged: (value) {
                  ApplicantAppliedBefore.appliedBefore = value;
                  if (ApplicantAppliedBefore.appliedBefore == 'Yes') {
                    setState(() {
                      ApplicantAppliedBefore.hide = true;
                    });
                  }
                },
                groupValue: ApplicantAppliedBefore.appliedBefore,
              ),
              Text('Yes'),
              Radio(
                value: 'No',
                onChanged: (value) {
                  ApplicantAppliedBefore.appliedBefore = value;

                  if (ApplicantAppliedBefore.appliedBefore == 'No') {
                    setState(() {
                      ApplicantAppliedBefore.hide = false;
                    });
                  }
                },
                groupValue: ApplicantAppliedBefore.appliedBefore,
              ),
              Text('No')
            ],
          ),
          //Question : Where and when
          Visibility(
            visible: ApplicantAppliedBefore.hide,
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    TextFormField(
                      controller: widget.where,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        hintText: 'Where?',
                        labelText: 'Where',
                        labelStyle: TextStyle(fontSize: 20),
                        border: UnderlineInputBorder(),
                      ),
                      onSaved: (value) {
                        ApplicantAppliedBefore.appliedWhere = value;
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: widget.when,
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        hintText: 'When?',
                        labelText: 'When',
                        labelStyle: TextStyle(fontSize: 20),
                        border: UnderlineInputBorder(),
                      ),
                      onSaved: (value) {
                        ApplicantAppliedBefore.appliedWhen = value;
                      },
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}

//Question : Referred By:
class ApplicantReferredBy extends StatelessWidget {
  const ApplicantReferredBy({
    Key key,
    @required this.referredBy,
  }) : super(key: key);

  final TextEditingController referredBy;
  static String applicantReferredBy;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: referredBy,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Name of referral',
        labelText: 'Referred By : ',
        labelStyle: TextStyle(fontSize: 20),
        border: UnderlineInputBorder(),
      ),
      onSaved: (value) {
        applicantReferredBy = value;
      },
    );
  }
}
