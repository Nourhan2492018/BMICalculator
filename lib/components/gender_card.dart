import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_icon_button.dart';

class GenderCard extends StatefulWidget {
  Image image;
  TextInfo txt;
  BMIIcon icon;

  GenderCard(this.icon,this.image, this.txt);

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius:  BorderRadiusDirectional.circular(12),),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              widget.icon,

              Center(child:widget.image),
              SizedBox(height: 7,),
              Center(child:widget.txt),
            ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
