import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:issm/Components/Applicant_components/applicant_date.dart';
import 'package:issm/Components/Applicant_components/applicant_form_icf.dart';
import 'package:issm/Components/Applicant_components/applicant_form_personal_info.dart';

//Section : Personal Information
class ApplicantIcfForm extends StatefulWidget {
  @override
  _ApplicantIcfFormState createState() => _ApplicantIcfFormState();
}

class _ApplicantIcfFormState extends State<ApplicantIcfForm> {
  String lastName, phoneNumber;

  String above18 = '';

  var _applicantPersonalInfo = GlobalKey<FormState>();
  TextEditingController applicationICFcontrolNum = TextEditingController();
  TextEditingController applicationICFdateRec = TextEditingController();
  TextEditingController applicationICFEName = TextEditingController();
  TextEditingController applicationICFEaddTel = TextEditingController();
  TextEditingController applicationICFFID = TextEditingController();
  TextEditingController applicationICFappN = TextEditingController();
  TextEditingController applicationICFSSN = TextEditingController();
  TextEditingController applicationICFhaveWorked = TextEditingController();
  TextEditingController applicationICFsDate = TextEditingController();
  TextEditingController applicationICFsWage = TextEditingController();
  TextEditingController applicationICFpos = TextEditingController();
  TextEditingController applicationICFl16un40 = TextEditingController();
  TextEditingController applicationICFvetUSAF = TextEditingController();
  TextEditingController applicationICFSNAP = TextEditingController();
  TextEditingController applicationICFVRA = TextEditingController();
  TextEditingController applicationICFTANF = TextEditingController();
  TextEditingController applicationICFconv = TextEditingController();
  TextEditingController applicationICFRRCEZ = TextEditingController();
  TextEditingController applicationICFEZ = TextEditingController();
  TextEditingController applicationICFSSI = TextEditingController();
  TextEditingController applicationICFvetUnem6m = TextEditingController();
  TextEditingController applicationICFvet4w = TextEditingController();
  TextEditingController applicationICFsourcesUsed = TextEditingController();
  TextEditingController applicationICFsign = TextEditingController();
  TextEditingController applicationICFsignopt = TextEditingController();
  TextEditingController applicationICFdate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        children: [
          Form(
            key: _applicantPersonalInfo,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'APPLICANT INFORMATION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  '(See instructions on reverse)',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFcontrolNum(
                    applicationICFcontrolNum: applicationICFcontrolNum),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFdateRec(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'EMPLOYER INFORMATION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFEname(applicationICFEName: applicationICFEName),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFEaddTel(
                    applicationICFEaddTel: applicationICFEaddTel),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFFID(applicationICFFID: applicationICFFID),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'APPLICANT INFORMATION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFappN(applicationICFappN: applicationICFappN),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFSSN(applicationICFSSN: applicationICFSSN),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFhaveWorked(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'APPLICANT CHARACTERISTICS FOR WOTC TARGET GROUP CERTIFICATION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFsDate(),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFsWage(applicationICFsWage: applicationICFsWage),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFpos(applicationICFpos: applicationICFpos),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFl16un40(),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFvetUSAF1(),
                SizedBox(
                  height: 10,
                ),
                ApplicationICFSNAP(applicationICFSNAP: applicationICFSNAP),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
