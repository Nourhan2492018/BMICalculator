import 'package:bmi_calculator_app/components/button.dart';
import 'package:bmi_calculator_app/components/connect_row.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:bmi_calculator_app/models/user.dart';
import 'package:flutter/material.dart';

import '../views/bmi_calculator_view.dart';

class ColumResult extends StatelessWidget {
  User user;
  ColumResult(this.user);
  @override
  Widget build(BuildContext context) {
    String name=user.email;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextInfo('Body Mass Index is a simple calculation using a person’s height and weight. The formula is BMI = kg/m2 where kg is a person’s weight in kilograms and m2 is their height in metres squared.A BMI of 25.0 or more is overweight, while the healthy range is 18.5 to 24.9. BMI applies to most adults 18-65 years.', 15,FontStyle.normal,Colors.white),
          ConnectRow(),
          Button(TextEditingController(),TextEditingController(), BMICalculatorView(user),Icon(Icons.phone,color: Colors.white),'Call Now'),
          TextInfo('$name', 15,FontStyle.normal,Colors.white),
        ],
      ),
    );
  }
}
