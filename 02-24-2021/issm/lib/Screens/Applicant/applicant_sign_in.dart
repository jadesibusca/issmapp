import 'dart:ui';
import 'package:issm/Screens/Applicant/applicant_fillup_form.dart';

import 'package:line_icons/line_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicantSignIn extends StatefulWidget {
  @override
  _ApplicantSignInState createState() => _ApplicantSignInState();
}

class _ApplicantSignInState extends State<ApplicantSignIn> {
//   int progressbar = 0;

//   ReceivePort _receivePort = ReceivePort();

//   static downloadingCallback(id, status, progress) {
//     //looking up for a send port
//     SendPort sendPort = IsolateNameServer.lookupPortByName("downloading");
// //sending data
//     sendPort.send([id, status, progress]);
//   }

//   @override
//   void initState() {
//     super.initState();
// //registering a send port of the other isolates
//     IsolateNameServer.registerPortWithName(
//         _receivePort.sendPort, "downloading");
// //listening for the data coming from other isolates
//     _receivePort.listen((message) {
//       setState(() {
//         progressbar = message[2];
//       });

//       print(progressbar);
//     });
//     FlutterDownloader.registerCallback(downloadingCallback);
//   }

//   //Loads the pdf file from the drive

//   void download() async {
//     final status = await Permission.storage.request();

//     if (status.isGranted) {
//       final externalDirectory = await getExternalStorageDirectory();

//       final id = await FlutterDownloader.enqueue(
//           savedDir: externalDirectory.path,
//           url:
//               "https://drive.google.com/file/d/1sdpTsCOjU_utePD2Cgl5miTjiAyE3She/view?usp=sharing",
//           showNotification: true,
//           fileName: "ISSM Application Form",
//           openFileFromNotification: true);
//     } else {
//       print('Access Denied!');
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.blue[100]),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            // height: 300,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue, offset: Offset(0, 3), blurRadius: 10),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
                    elevation: MaterialStateProperty.all<double>(10.0),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide.none)),
                    side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(color: Colors.blue[900], width: 2)),
                  ),
                  icon: Icon(
                    LineIcons.penFancy,
                    size: 40,
                    color: Colors.blue[900],
                  ),
                  label: Text(
                    'Fill up application form',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () => Navigator.of(context)
                      .pushNamed(ApplicantFillUpForm.routeName),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
