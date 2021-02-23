import 'package:flutter/material.dart';

import 'package:issm/Components/Applicant_components/applicant_form_education.dart';

//Section:  Education
class ApplicantFillUpEducation extends StatefulWidget {
  @override
  _ApplicantFillUpEducationState createState() =>
      _ApplicantFillUpEducationState();
}

class _ApplicantFillUpEducationState extends State<ApplicantFillUpEducation> {
  var applicantEducation = GlobalKey<FormState>();
  TextEditingController grammarSchoolName = TextEditingController();
  TextEditingController grammarSchoolYears = TextEditingController();
  TextEditingController grammarSchoolGraduate = TextEditingController();
  TextEditingController grammarSchoolSubjectStudied = TextEditingController();
  TextEditingController highSchoolName = TextEditingController();
  TextEditingController highSchoolYears = TextEditingController();
  TextEditingController highSchoolGraduate = TextEditingController();
  TextEditingController highSchoolSubjectStudied = TextEditingController();
  TextEditingController collegeSchoolName = TextEditingController();
  TextEditingController collegeSchoolYears = TextEditingController();
  TextEditingController collegeSchoolGraduate = TextEditingController();
  TextEditingController collegeSchoolSubjectStudied = TextEditingController();
  TextEditingController otherSchoolingName = TextEditingController();
  TextEditingController otherSchoolingYears = TextEditingController();
  TextEditingController otherSchoolingGraduate = TextEditingController();
  TextEditingController otherSchoolingSubjectStudied = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.topLeft,
      //color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'EDUCATION',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Form(
              key: applicantEducation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grammar School',
                    style: TextStyle(fontSize: 18),
                  ),
                  ApplicantGrammarSchoolName(
                      grammarSchoolName: grammarSchoolName),
                  SizedBox(
                    height: 5,
                  ),
                  ApplicanatGrammarSchoolYears(
                      grammarSchoolYears: grammarSchoolYears),
                  SizedBox(
                    height: 5,
                  ),
                  ApplicantGrammarSchoolGraduate(
                      grammarSchoolGraduate: grammarSchoolGraduate),
                  SizedBox(
                    height: 5,
                  ),
                  ApplicantGrammarSchoolSubjects(
                      grammarSchoolSubjectStudied: grammarSchoolSubjectStudied),
                  SizedBox(height: 5),
                  Text(
                    'High School',
                    style: TextStyle(fontSize: 18),
                  ),
                  ApplicantHighSchoolName(highSchoolName: highSchoolName),
                  SizedBox(height: 5),
                  ApplicantHIghSchoolYears(highSchoolYears: highSchoolYears),
                  SizedBox(height: 5),
                  ApplicantHighSchoolGraduate(
                      highSchoolGraduate: highSchoolGraduate),
                  SizedBox(height: 5),
                  ApplicantHighSchoolSubjects(
                      highSchoolSubjectStudied: highSchoolSubjectStudied),
                  SizedBox(height: 5),
                  Text(
                    'COLLEGE',
                    style: TextStyle(fontSize: 18),
                  ),
                  ApplicantCollegeName(collegeSchoolName: collegeSchoolName),
                  SizedBox(height: 5),
                  ApplicantCollegeYears(collegeSchoolYears: collegeSchoolYears),
                  SizedBox(height: 5),
                  ApplicantCollegeGraduate(
                      collegeSchoolGraduate: collegeSchoolGraduate),
                  SizedBox(height: 5),
                  ApplicantCollegeSubjects(
                      collegeSchoolSubjectStudied: collegeSchoolSubjectStudied),
                  SizedBox(height: 5),
                  Text(
                    'OTHER SCHOOLING',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Trade, Business, Correspondence',
                    style: TextStyle(fontSize: 16),
                  ),
                  ApplicantOtherSchoolName(
                      otherSchoolingName: otherSchoolingName),
                  SizedBox(height: 5),
                  ApplicantOtherSchoolingYears(
                      otherSchoolingYears: otherSchoolingYears),
                  SizedBox(height: 5),
                  ApplicantOtherSchoolingGraduate(
                      otherSchoolingGraduate: otherSchoolingGraduate),
                  SizedBox(height: 5),
                  ApplicantOtherSchoolingSubjects(
                      otherSchoolingSubjectStudied:
                          otherSchoolingSubjectStudied),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
