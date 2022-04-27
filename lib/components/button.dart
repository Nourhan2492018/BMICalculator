
import 'package:flutter/material.dart';
class Button extends StatefulWidget {
  TextEditingController pass,email;
  Widget Screen;
  String txt;
  final icon;
  Button(this.pass, this.email, this.Screen,this.icon,this.txt);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(2000.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(onPressed: (){

      },
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [widget.icon,
            Text(widget.txt,
              style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
