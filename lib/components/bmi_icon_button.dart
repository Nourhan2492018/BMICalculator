import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:flutter/material.dart';

class BMIIconButton extends StatelessWidget{
  BMIIcon icon;
  final color;
  double size;
  Widget screen;
  BMIIconButton(this.icon,this.color,this.size, this.screen);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return IconButton(

      iconSize:size ,
      icon: icon,
      onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(
            builder:(context)=>screen,
          ),
        );

      },
    );
  }


}