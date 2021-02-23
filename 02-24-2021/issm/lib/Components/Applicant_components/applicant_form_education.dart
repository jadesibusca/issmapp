import 'package:flutter/material.dart';

//Grammar School - Name
class ApplicantGrammarSchoolName extends StatelessWidget {
  const ApplicantGrammarSchoolName({
    Key key,
    @required this.grammarSchoolName,
  }) : super(key: key);

  final TextEditingController grammarSchoolName;
  static String applicantGrammarSchoolName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: grammarSchoolName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Name and location of school',
        labelText: 'Name and location of school : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantGrammarSchoolName = value;
      },
    );
  }
}

//Grammar School - Years
class ApplicanatGrammarSchoolYears extends StatelessWidget {
  const ApplicanatGrammarSchoolYears({
    Key key,
    @required this.grammarSchoolYears,
  }) : super(key: key);

  final TextEditingController grammarSchoolYears;
  static String applicantGrammarSchoolYears;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: grammarSchoolYears,
      decoration: InputDecoration(
        hintText: 'Years',
        labelText: 'Years : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantGrammarSchoolYears = value;
      },
    );
  }
}

// Grammar School - Did you graduate?
class ApplicantGrammarSchoolGraduate extends StatelessWidget {
  const ApplicantGrammarSchoolGraduate({
    Key key,
    @required this.grammarSchoolGraduate,
  }) : super(key: key);

  final TextEditingController grammarSchoolGraduate;
  static String applicantGrammarSchoolGraduate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: grammarSchoolGraduate,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Did you graduate?',
        labelText: 'Did you graduate ? ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantGrammarSchoolGraduate = value;
      },
    );
  }
}

//Grammar school - Subjects Studied
class ApplicantGrammarSchoolSubjects extends StatelessWidget {
  const ApplicantGrammarSchoolSubjects({
    Key key,
    @required this.grammarSchoolSubjectStudied,
  }) : super(key: key);

  final TextEditingController grammarSchoolSubjectStudied;
  static String applicantGrammarSchoolSubjectStudied;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: grammarSchoolSubjectStudied,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: 'What are the subjects that you studied',
        labelText: 'Subjects Studied : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantGrammarSchoolSubjectStudied = value;
      },
    );
  }
}

class ApplicantHighSchoolName extends StatelessWidget {
  const ApplicantHighSchoolName({
    Key key,
    @required this.highSchoolName,
  }) : super(key: key);

  final TextEditingController highSchoolName;
  static String applicantHighSchoolName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: highSchoolName,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Name and location of school',
        labelText: 'Name and location of school : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantHighSchoolName = value;
      },
    );
  }
}

class ApplicantHIghSchoolYears extends StatelessWidget {
  const ApplicantHIghSchoolYears({
    Key key,
    @required this.highSchoolYears,
  }) : super(key: key);

  final TextEditingController highSchoolYears;
  static String applicantHighSchoolYears;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: highSchoolYears,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'Years',
        labelText: 'Years : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantHighSchoolYears = value;
      },
    );
  }
}

class ApplicantHighSchoolGraduate extends StatelessWidget {
  const ApplicantHighSchoolGraduate({
    Key key,
    @required this.highSchoolGraduate,
  }) : super(key: key);

  final TextEditingController highSchoolGraduate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: highSchoolGraduate,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Did you graduate?',
        labelText: 'Did you graduate ? ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
    );
  }
}

class ApplicantHighSchoolSubjects extends StatelessWidget {
  const ApplicantHighSchoolSubjects({
    Key key,
    @required this.highSchoolSubjectStudied,
  }) : super(key: key);

  final TextEditingController highSchoolSubjectStudied;
  static String applicantHighSchoolSubjectStudied;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: highSchoolSubjectStudied,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'What are the subjects that you studied',
        labelText: 'Subjects Studied : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantHighSchoolSubjectStudied = value;
      },
    );
  }
}

class ApplicantCollegeName extends StatelessWidget {
  const ApplicantCollegeName({
    Key key,
    @required this.collegeSchoolName,
  }) : super(key: key);

  final TextEditingController collegeSchoolName;
  static String applicantCollegeSchoolName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: collegeSchoolName,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Name and location of school',
        labelText: 'Name and location of school : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantCollegeSchoolName = value;
      },
    );
  }
}

class ApplicantCollegeYears extends StatelessWidget {
  const ApplicantCollegeYears({
    Key key,
    @required this.collegeSchoolYears,
  }) : super(key: key);

  final TextEditingController collegeSchoolYears;
  static String applicantCollegeSchoolYears;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: collegeSchoolYears,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Years',
        labelText: 'Years : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantCollegeSchoolYears = value;
      },
    );
  }
}

class ApplicantCollegeGraduate extends StatelessWidget {
  const ApplicantCollegeGraduate({
    Key key,
    @required this.collegeSchoolGraduate,
  }) : super(key: key);

  final TextEditingController collegeSchoolGraduate;
  static String applicantCollegeSchoolGraduate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: collegeSchoolGraduate,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Did you graduate?',
        labelText: 'Did you graduate ? ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantCollegeSchoolGraduate = value;
      },
    );
  }
}

class ApplicantCollegeSubjects extends StatelessWidget {
  const ApplicantCollegeSubjects({
    Key key,
    @required this.collegeSchoolSubjectStudied,
  }) : super(key: key);

  final TextEditingController collegeSchoolSubjectStudied;
  static String applicantCollegeSchoolSubjectsStudied;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: collegeSchoolSubjectStudied,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: 'What are the subjects that you studied',
        labelText: 'Subjects Studied : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantCollegeSchoolSubjectsStudied = value;
      },
    );
  }
}

class ApplicantOtherSchoolName extends StatelessWidget {
  const ApplicantOtherSchoolName({
    Key key,
    @required this.otherSchoolingName,
  }) : super(key: key);

  final TextEditingController otherSchoolingName;
  static String applicantOtherSchoolingName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: otherSchoolingName,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Name and location of school',
        labelText: 'Name and location of school : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantOtherSchoolingName = value;
      },
    );
  }
}

class ApplicantOtherSchoolingYears extends StatelessWidget {
  const ApplicantOtherSchoolingYears({
    Key key,
    @required this.otherSchoolingYears,
  }) : super(key: key);

  final TextEditingController otherSchoolingYears;
  static String applicantOtherSchoolingYears;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: otherSchoolingYears,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Years',
        labelText: 'Years : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
    );
  }
}

class ApplicantOtherSchoolingGraduate extends StatelessWidget {
  const ApplicantOtherSchoolingGraduate({
    Key key,
    @required this.otherSchoolingGraduate,
  }) : super(key: key);

  final TextEditingController otherSchoolingGraduate;
  static String applicantOtherSchoolingGraduate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: otherSchoolingGraduate,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Did you graduate?',
        labelText: 'Did you graduate ? ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantOtherSchoolingGraduate = value;
      },
    );
  }
}

class ApplicantOtherSchoolingSubjects extends StatelessWidget {
  const ApplicantOtherSchoolingSubjects({
    Key key,
    @required this.otherSchoolingSubjectStudied,
  }) : super(key: key);

  final TextEditingController otherSchoolingSubjectStudied;
  static String applicantOtherSchoolingSubjectStudied;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: otherSchoolingSubjectStudied,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'What are the subjects that you studied',
        labelText: 'Subjects Studied : ',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: Colors.green, style: BorderStyle.solid, width: 3),
        ),
      ),
      onSaved: (value) {
        applicantOtherSchoolingSubjectStudied = value;
      },
    );
  }
}
