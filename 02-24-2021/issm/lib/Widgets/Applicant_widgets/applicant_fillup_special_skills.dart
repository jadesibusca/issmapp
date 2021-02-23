import 'package:flutter/material.dart';

//Section - Special Skills and Qualifications
class ApplicantFillUpSpecialSkills extends StatefulWidget {
  @override
  _ApplicantFillUpSpecialSkillsState createState() =>
      _ApplicantFillUpSpecialSkillsState();
}

class _ApplicantFillUpSpecialSkillsState
    extends State<ApplicantFillUpSpecialSkills> {
  var applicantSkills = GlobalKey<FormState>();
  TextEditingController applicantSpecialSkills = TextEditingController();
  String applicantSpecialSkillsAndQualifications;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SPECIAL SKILLS/ QUALIFICATIONS',
            style: TextStyle(fontSize: 20),
          ),
          Text(
              'List all special skills, qualifications, licences and certifications: '),
          Form(
            key: applicantSkills,
            child: TextFormField(
              controller: applicantSpecialSkills,
              keyboardType: TextInputType.text,
              maxLines: 5,
              decoration: InputDecoration(
                hintText:
                    'List all special skills, qualifications, licences and certifications: ',
                labelText: 'SPECIAL SKILLS / QUALIFICATIONS ',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
              onSaved: (value) {
                applicantSpecialSkillsAndQualifications = value;
              },
            ),
          )
        ],
      ),
    );
  }
}
