import 'package:bmi_calculator_app/components/bmi_icon_button.dart';
import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:bmi_calculator_app/views/login_view.dart';
import 'package:flutter/material.dart';

class RightCard extends StatefulWidget {
  @override
  State<RightCard> createState() => _RightCardState();
}

class _RightCardState extends State<RightCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child:  Container(
        height: 65,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.blue,
          elevation: 1,

          child:Row(
            children: [
              SizedBox(width: 5,),
              TextInfo(' Unit', 20,FontStyle.normal,Colors.white),
              SizedBox(width: 15,),
              IconButton(onPressed: (){}, icon: BMIIconButton(BMIIcon(Icons.arrow_drop_down,Colors.white,20,),Colors.white,20,LoginView())),

            ],
          ),
        ),
      ),
    );
  }
}
