import 'package:bmi_calculator_app/bloc/bim_calculation.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:bmi_calculator_app/models/user.dart';
import 'package:bmi_calculator_app/views/result_view.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatefulWidget {
 User user;

  @override
  State<CalculateButton> createState() => _CalculateButtonState();

 CalculateButton(this.user);
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0,),
          child: Container(decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(200.0),
          ),
            child: MaterialButton(

              onPressed: (){
                BMICalculation b= BMICalculation(widget.user);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder:(context)=>ResultView(b),
                  ),
                );

              },
              color: Colors.blue,
              child:TextInfo("CALCULATE", 20,FontStyle.normal,Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
