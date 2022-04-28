import 'package:bmi_calculator_app/components/left_card.dart';
import 'package:bmi_calculator_app/components/right_card.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:bmi_calculator_app/models/user.dart';
import 'package:flutter/material.dart';

class BMIRow extends StatelessWidget {

LeftCard leftCard;
RightCard rightCard;
TextInfo title;
User user;
BMIRow(this.user,this.title,this.leftCard, this.rightCard);
static int weight=0,height=0,age=0;
  @override

  Widget build(BuildContext context) {
     set();
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
      user.age=leftCard.counter;
    }
    else if(title.cap=='Weight')
    {
      user.weight=leftCard.counter;
    }
    else if(title.cap=='Height')
    {
      user.height=leftCard.counter;
    }
  }
  User get(){
    return user;
  }
}
