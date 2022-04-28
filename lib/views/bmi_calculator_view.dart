import 'package:bmi_calculator_app/bloc/bim_calculation.dart';
import 'package:bmi_calculator_app/components/bmi_row.dart';
import 'package:bmi_calculator_app/components/calculate_button.dart';
import 'package:bmi_calculator_app/components/gender_row.dart';
import 'package:bmi_calculator_app/components/ibm_app_bar.dart';
import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/components/left_card.dart';
import 'package:bmi_calculator_app/components/right_card.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:bmi_calculator_app/models/user.dart';
import 'package:bmi_calculator_app/views/login_view.dart';
import 'package:bmi_calculator_app/views/result_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BMICalculatorView extends StatelessWidget {
  User user;
  String gender='male';
  LeftCard w=new LeftCard(0);
  LeftCard h=new LeftCard(0);
  LeftCard a=new LeftCard(0);
  int weight=0,height=0,age=0;
  GenderRow g=GenderRow();
  BMICalculatorView(this.user);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: BMIAppBar(BMIIcon(Icons.menu,Colors.blue,25),BMIIcon(Icons.share,Colors.blue,25),LoginView()),
      body:Container(
        color: Colors.white.withOpacity(1),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,),
                child: TextInfo('BMI Calculator', 30,FontStyle.normal,Colors.blue),
              ),
            ),
            g,
            BMIRow(user,TextInfo('Height', 13,FontStyle.normal,Colors.blue),w,RightCard()),
            BMIRow(user, TextInfo('weight', 13,FontStyle.normal,Colors.blue),h,RightCard()),
            Expanded(
              flex: 3,
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                      padding: const EdgeInsets.all(5),
                      child: TextInfo('Age', 13,FontStyle.normal,Colors.blue),),
                   a,],),
            ),
            SizedBox(height: 20),
            Expanded(
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
                        user.weight=w.counter;
                        user.height=h.counter;
                        user.age=a.counter;
                        user.gender= g.gender;
                        BMICalculation b= BMICalculation(user);
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
            ),
          ],
        ),
      ) ,
    );
  }
}
