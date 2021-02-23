import 'package:flutter/material.dart';
import 'package:issm/Components/Applicant_components/applicant_date.dart';
import 'package:issm/Components/Applicant_components/applicant_form_personal_info.dart';

//Section : Personal Information
class ApplicantFillupPersonalInfo extends StatefulWidget {
  @override
  _ApplicantFillupPersonalInfoState createState() =>
      _ApplicantFillupPersonalInfoState();
}

class _ApplicantFillupPersonalInfoState
    extends State<ApplicantFillupPersonalInfo> {
  String lastName,
      firstName,
      middleName,
      presentAdd,
      permanentAdd,
      presentAddCSZ,
      permanentAddCSZ,
      phoneNumber;

  String above18 = '';

  var _applicantPersonalInfo = GlobalKey<FormState>();
  TextEditingController applicantLastName = TextEditingController();
  TextEditingController applicantFirstName = TextEditingController();
  TextEditingController applicantMiddleName = TextEditingController();
  TextEditingController applicantPresentAdd = TextEditingController();
  TextEditingController applicantPresentAddCSZ = TextEditingController();
  TextEditingController applicantPermanentAdd = TextEditingController();
  TextEditingController applicantPermanentAddCSZ = TextEditingController();
  TextEditingController applicantPhoneNumber = TextEditingController();

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
                  'PERSONAL INFORMATION',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                DatePicker(),
                SizedBox(
                  height: 5,
                ),
                ApplicantLastnameForm(
                  applicantLastName: applicantLastName,
                ),
                SizedBox(
                  height: 10,
                ),
                ApplicantFirstName(applicantFirstName: applicantFirstName),
                SizedBox(
                  height: 10,
                ),
                ApplicantMiddleName(applicantMiddleName: applicantMiddleName),
                SizedBox(
                  height: 10,
                ),
                ApplicantPresendAdd(applicantPresentAdd: applicantPresentAdd),
                SizedBox(
                  height: 10,
                ),
                ApplicantPresentAddCSZ(
                    applicantPresentAddCSZ: applicantPresentAddCSZ),
                SizedBox(
                  height: 10,
                ),
                ApplicantPermanentAdd(
                    applicantPermanentAdd: applicantPermanentAdd),
                SizedBox(
                  height: 10,
                ),
                ApplicantPermanentAddCSZ(
                    applicantPermanentAddCSZ: applicantPermanentAddCSZ),
                SizedBox(
                  height: 10,
                ),
                ApplicantPhoneNumber(
                    applicantPhoneNumber: applicantPhoneNumber),
                SizedBox(
                  height: 5,
                ),
                ApplicantAbove18(),
                ApplicantPrevented(),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
