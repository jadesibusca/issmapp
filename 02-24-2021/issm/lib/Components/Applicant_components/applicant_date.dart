import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  DatePicker({Key key, this.title}) : super(key: key);

  final String title;

  //DateTime get pickedDate => _EndDateState().picked;

  // DateTime get pickedDate => DateTime.now();

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime date = DateTime.now();
  static String dateNow;
  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1940),
        lastDate: DateTime(2050));

    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    dateNow = date.month.toString() +
        '/' +
        date.day.toString() +
        '/' +
        date.year.toString();

    return GestureDetector(
      // onTap: () => selectTimePicker(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                // Text(
                //   'Date',
                //   style: TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   alignment: Alignment.centerLeft,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //             color: Colors.blue[200],
                //             blurRadius: 7,
                //             offset: Offset(0, 5))
                //       ]),
                //   height: 60,
                //   child:
                // Container(
                //   decoration: BoxDecoration(),
                //   padding: EdgeInsets.symmetric(
                //     vertical: 5,
                //     horizontal: 20,
                //   ),
                // child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Date: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dateNow,
                      // date.month.toString() +
                      //     '/' +
                      //     date.day.toString() +
                      //     '/' +
                      //     date.year.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                // ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
