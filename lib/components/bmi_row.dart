import 'package:bmi_calculator_app/components/left_card.dart';
import 'package:bmi_calculator_app/components/right_card.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:flutter/material.dart';

class BMIRow extends StatelessWidget {

LeftCard leftCard;
RightCard rightCard;
TextInfo title;

BMIRow(this.title,this.leftCard, this.rightCard);
static int weight=0,height=0,age=0;
  @override

  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: title,
          ),
          Row(
            children: [
              leftCard,
              rightCard,
            ],
          ),
          
        ],
      ),
    );
  }
  void set()
  {
    if(title.cap=='Age')
      {

      }
  }
}
