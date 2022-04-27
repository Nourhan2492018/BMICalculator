import 'package:bmi_calculator_app/components/bmi_icon_button.dart';
import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/views/login_view.dart';
import 'package:flutter/material.dart';

class ConnectRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BMIIconButton(BMIIcon(Icons.star_rate_outlined,Colors.white,20,),Colors.blue,20,LoginView()),
        BMIIconButton(BMIIcon(Icons.favorite_border,Colors.white,20),Colors.blue,20,LoginView()),
        BMIIconButton(BMIIcon(Icons.add_location_alt_outlined,Colors.white,20),Colors.blue,20,LoginView()),
        BMIIconButton(BMIIcon(Icons.chat_bubble_outlined,Colors.white,20),Colors.blue,20,LoginView()),
      ],
    );
  }
}
