import 'package:flutter/material.dart';

import 'package:issm/Components/Applicant_components/applicant_form_desired_position.dart';

//Section : Employment Desired
class ApplicantFillupEmploymentDesired extends StatefulWidget {
  @override
  _ApplicantFillupEmploymentDesiredState createState() =>
      _ApplicantFillupEmploymentDesiredState();
}

class _ApplicantFillupEmploymentDesiredState
    extends State<ApplicantFillupEmploymentDesired> {
  String currentlyEmployed = '';

  var employmentdesiredform = GlobalKey<FormState>();
  TextEditingController position = TextEditingController();
  TextEditingController dateYouCanStart = TextEditingController();
  TextEditingController salaryDesired = TextEditingController();
  TextEditingController referredBy = TextEditingController();
  TextEditingController where = TextEditingController();
  TextEditingController when = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.orange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'EMPLOYMENT DESIRED',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Form(
            key: employmentdesiredform,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Position :
                ApplicantPosition(position: position),
                SizedBox(
                  height: 5,
                ),
                //Question : Date you can start
                ApplicantDateCanStart(dateYouCanStart: dateYouCanStart),
                SizedBox(height: 5),
                //Question: Are you currently employed?
                ApplicantCurrentlyEmployed(),
                SizedBox(
                  height: 5,
                ),
                //Question : Even applied to this company before?
                ApplicantAppliedBefore(),
                SizedBox(
                  height: 5,
                ),
                ApplicantReferredBy(referredBy: referredBy),
              ],
            ),
          )
        ],
      ),
    );
  }
}
