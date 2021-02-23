import 'package:flutter/material.dart';
import 'package:issm/Components/Applicant_components/applicant_form_personal_info.dart';

import 'package:issm/Widgets/Applicant_widgets/applicant_fillup_education.dart';
import 'package:issm/Widgets/Applicant_widgets/applicant_fillup_employment_desired.dart';
import 'package:issm/Widgets/Applicant_widgets/applicant_fillup_personal_info.dart';
import 'package:issm/Widgets/Applicant_widgets/applicant_fillup_special_skills.dart';

import 'applicant__p9_icf.dart';

class ApplicantFillUpForm extends StatelessWidget {
  static const routeName = '/applicant-fillup-form';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.arrow_right_alt_outlined),
        onPressed: () {
          Navigator.of(context).pushNamed(ApplicantICF.routeName);
          // if (!_applicantPersonalInfo.currentState.validate()) {
          //   return;
          // } else {
          //   _applicantPersonalInfo.currentState.save();
          //   Navigator.of(context).pushNamed(SampleOnly.routeName);
          // }
          print(ApplicantAbove18.above18);
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        // centerTitle: true,
        title: Image.asset('assets/issm.png'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'APPLICATION FOR EMPLOYMENT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                  'Pre-employment Questionare • An Equal Opportunity Employer'),
              SizedBox(height: 15),
              ApplicantFillupPersonalInfo(),
              ApplicantFillupEmploymentDesired(),
              ApplicantFillUpEducation(),
              ApplicantFillUpSpecialSkills(),
            ],
          ),
        ),
      ),
    );
  }
}
