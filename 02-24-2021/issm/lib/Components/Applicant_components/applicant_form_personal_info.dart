import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ApplicantLastnameForm extends StatelessWidget {
  const ApplicantLastnameForm({
    Key key,
    @required this.applicantLastName,
  }) : super(key: key);

  final TextEditingController applicantLastName;
  static String lastName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantLastName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Last name'),
      onSaved: (value) {
        lastName = value;
      },
      validator: MinLengthValidator(1, errorText: 'Last name required'),
    );
  }
}

class ApplicantFirstName extends StatelessWidget {
  const ApplicantFirstName({
    Key key,
    @required this.applicantFirstName,
  }) : super(key: key);

  final TextEditingController applicantFirstName;
  static String firstName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantFirstName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'First name'),
      onSaved: (String value) {
        ApplicantFirstName.firstName = value;
      },
      validator: MinLengthValidator(1, errorText: 'First name required'),
    );
  }
}

class ApplicantMiddleName extends StatelessWidget {
  const ApplicantMiddleName({
    Key key,
    @required this.applicantMiddleName,
  }) : super(key: key);

  final TextEditingController applicantMiddleName;
  static String middleName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantMiddleName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Middle name'),
      onSaved: (String value) {
        middleName = value;
      },
      validator: MinLengthValidator(1, errorText: 'Middle name required'),
    );
  }
}

class ApplicantPresendAdd extends StatelessWidget {
  const ApplicantPresendAdd({
    Key key,
    @required this.applicantPresentAdd,
  }) : super(key: key);

  final TextEditingController applicantPresentAdd;
  static String presentAdd;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantPresentAdd,
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Present Address'),
      onSaved: (String value) {
        presentAdd = value;
      },
      validator: MinLengthValidator(1, errorText: 'Field required'),
    );
  }
}

class ApplicantPresentAddCSZ extends StatelessWidget {
  const ApplicantPresentAddCSZ({
    Key key,
    @required this.applicantPresentAddCSZ,
  }) : super(key: key);

  final TextEditingController applicantPresentAddCSZ;
  static String presentAddCSZ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantPresentAddCSZ,
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'City, State, ZIP'),
      onSaved: (String value) {
        presentAddCSZ = value;
      },
      validator: MinLengthValidator(1, errorText: 'Field required'),
    );
  }
}

class ApplicantPermanentAdd extends StatelessWidget {
  const ApplicantPermanentAdd({
    Key key,
    @required this.applicantPermanentAdd,
  }) : super(key: key);

  final TextEditingController applicantPermanentAdd;
  static String permanentAdd;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantPermanentAdd,
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Permanent Address'),
      onSaved: (String value) {
        permanentAdd = value;
      },
      validator: MinLengthValidator(1, errorText: 'Field required'),
    );
  }
}

class ApplicantPermanentAddCSZ extends StatelessWidget {
  const ApplicantPermanentAddCSZ({
    Key key,
    @required this.applicantPermanentAddCSZ,
  }) : super(key: key);

  final TextEditingController applicantPermanentAddCSZ;
  static String permanentAddCSZ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantPermanentAddCSZ,
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'City, State, ZIP'),
      onSaved: (String value) {
        permanentAddCSZ = value;
      },
      validator: MinLengthValidator(1, errorText: 'Field required'),
    );
  }
}

class ApplicantPhoneNumber extends StatelessWidget {
  const ApplicantPhoneNumber({
    Key key,
    @required this.applicantPhoneNumber,
  }) : super(key: key);

  final TextEditingController applicantPhoneNumber;
  static String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: applicantPhoneNumber,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Phone number'),
      onSaved: (String value) {
        phoneNumber = value;
      },
      validator: MinLengthValidator(1, errorText: 'Field required'),
    );
  }
}

//Question Are you 18 years or older?:
class ApplicantAbove18 extends StatefulWidget {
  ApplicantAbove18({
    Key key,
  }) : super(key: key);

  static String above18 = '';
  @override
  _ApplicantAbove18State createState() => _ApplicantAbove18State();
}

class _ApplicantAbove18State extends State<ApplicantAbove18> {
  @override
  void initState() {
    ApplicantAbove18.above18 = 'Yes';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Are you 18 years or older? '),
        Radio(
          value: 'Yes',
          activeColor: Colors.green,
          groupValue: ApplicantAbove18.above18,
          onChanged: (String value) {
            ApplicantAbove18.above18 = value;
            setState(() {
              print(ApplicantAbove18.above18);
            });
          },
        ),
        Text('Yes'),
        Radio(
          value: 'No',
          activeColor: Colors.red,
          groupValue: ApplicantAbove18.above18,
          onChanged: (String value) {
            ApplicantAbove18.above18 = value;
            setState(() {
              print(ApplicantAbove18.above18);
            });
          },
        ),
        Text('No'),
      ],
    );
  }
}

//Question : Are you prevented from lawfully becoming employed in this country Because of visa or immigration status?
class ApplicantPrevented extends StatefulWidget {
  const ApplicantPrevented({
    Key key,
  }) : super(key: key);

  static String visaOrImmigrationStatus;

  @override
  _ApplicantPreventedState createState() => _ApplicantPreventedState();
}

class _ApplicantPreventedState extends State<ApplicantPrevented> {
  @override
  void initState() {
    ApplicantPrevented.visaOrImmigrationStatus = 'No';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
              'Are you prevented from lawfully becoming employed in this country Because of visa or immigration status?'),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Yes'),
              Radio(
                activeColor: Colors.red,
                value: 'Yes',
                onChanged: (value) {
                  ApplicantPrevented.visaOrImmigrationStatus = value;
                  setState(() {});
                },
                groupValue: ApplicantPrevented.visaOrImmigrationStatus,
              ),
              Text('No'),
              Radio(
                value: 'No',
                activeColor: Colors.green,
                groupValue: ApplicantPrevented.visaOrImmigrationStatus,
                onChanged: (value) {
                  ApplicantPrevented.visaOrImmigrationStatus = value;
                  setState(() {});
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
