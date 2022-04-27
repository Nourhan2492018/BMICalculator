import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:flutter/material.dart';
class BMIResultTable extends StatelessWidget {
int w,h,a;
String gender;

  BMIResultTable(this.w, this.h, this.a, this.gender);

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
          border: TableBorder.all(color: Colors.blue), // Allows to add a border decoration around your table
          children: [
            TableRow(children :[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextInfo('Weidght', 10,FontStyle.normal,Colors.blue),
              ),
              Padding(padding: const EdgeInsets.all(2.0),
      child: TextInfo('Heidght', 10,FontStyle.normal,Colors.blue),
      ),
              Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextInfo('Age', 10,FontStyle.normal,Colors.blue),
      ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextInfo('Gender', 10,FontStyle.normal,Colors.blue),
              ),
            ]),
            TableRow(children :[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextInfo('$w', 10,FontStyle.normal,Colors.blue),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextInfo('$h', 10,FontStyle.normal,Colors.blue),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextInfo('$a', 10,FontStyle.normal,Colors.blue),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextInfo(gender, 10,FontStyle.normal,Colors.blue),
              ),
            ]),
          ]
      ),
    );
  }
}
