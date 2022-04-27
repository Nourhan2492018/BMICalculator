import 'package:bmi_calculator_app/components/gender_card.dart';
import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:flutter/material.dart';
class GenderRow extends StatefulWidget {
  @override
  State<GenderRow> createState() => _GenderRowState();
}
class _GenderRowState extends State<GenderRow> {
bool male=true;
BMIIcon iconMale=BMIIcon(Icons.check_circle,Colors.amber,30);
BMIIcon iconFemale=BMIIcon(Icons.check_circle_outline_sharp,Colors.white,30);
  Color Fcolor=Colors.white,Mcolor=Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextInfo('Gender', 13,FontStyle.normal,Colors.blue),
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 5,),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {

                        male=true;
                        Fcolor=Colors.white;
                        Mcolor=Colors.amber;
                        iconMale=BMIIcon(Icons.check_circle,Mcolor,30);
                        iconFemale=BMIIcon(Icons.check_circle_outline_sharp,Colors.white,30);
                    });

                  },
                    child: Container(
                        decoration: BoxDecoration(
                          color: male ? Colors.amber : Colors.blue,
                          borderRadius:  BorderRadiusDirectional.circular(12),),
                        child: GenderCard(iconMale,Image(image: AssetImage('assets/images/m.png'),color: Mcolor,),TextInfo("Male", 20,FontStyle.normal,Mcolor))))),
                SizedBox(width: 10,),
                Expanded(child: GestureDetector(
                    onTap: (){
                      setState(() {

                               male=false;
                               Fcolor=Colors.amber;
                               Mcolor=Colors.white;
                               iconFemale=BMIIcon(Icons.check_circle,Fcolor,30);
                               iconMale=BMIIcon(Icons.check_circle_outline_sharp,Colors.white,30);
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          color:! male ? Colors.amber : Colors.blue,
                          borderRadius:  BorderRadiusDirectional.circular(
                            12,
                          ),),
                        child: GenderCard(iconFemale,Image(image: AssetImage('assets/images/w2.png'),color: Fcolor,),TextInfo("Female", 20,FontStyle.normal,Fcolor))))),
                SizedBox(width: 5,),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void initState() {
    super.initState();
  }
}
