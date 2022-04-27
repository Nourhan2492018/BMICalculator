import 'package:bmi_calculator_app/components/button.dart';
import 'package:bmi_calculator_app/components/connect_row.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:flutter/material.dart';

import '../views/bmi_calculator.dart';

class ColumResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical:14),
          child: TextInfo('Body Mass Index is a simple calculation using a person’s height and weight. The formula is BMI = kg/m2 where kg is a person’s weight in kilograms and m2 is their height in metres squared.A BMI of 25.0 or more is overweight, while the healthy range is 18.5 to 24.9. BMI applies to most adults 18-65 years.', 15,FontStyle.normal,Colors.white),
        ),
        ConnectRow(),
        Button(TextEditingController(),TextEditingController(), BMICalculatorView(),Icon(Icons.phone,color: Colors.white),'Call Now'),
      ],
    );
  }
}
