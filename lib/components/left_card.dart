import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:flutter/material.dart';

class LeftCard extends StatefulWidget {
  int counter=16;
  @override
  State<LeftCard> createState() => _LeftCardState();
  int getvalue()
  {
    print('vookjjj');
    print (counter);
    return this.counter;
  }
  void setvalue(int counter)
  {

    this.counter=counter;
    print (this.counter);
  }
}

class _LeftCardState extends State<LeftCard> {

  int c=0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child:  Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blue,
        elevation: 1,
        child:Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  child:BMIIcon(Icons.remove,Colors.blue,20),
                  mini: true,
                  heroTag: 'sub',
                  onPressed:(){
                    setState(() {
                      c--;
                      widget.setvalue(c);
                    });
                  },
                ),
              ),
              Center(child: Expanded(child:TextInfo('$c', 26,FontStyle.normal,Colors.white))),
              Expanded(
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  child:BMIIcon(Icons.add,Colors.blue,20),
                  heroTag: 'add',
                  mini: true,
                  onPressed:(){
                    setState(() {
                      c++;
                      widget.setvalue(c);

                    });
                  },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
