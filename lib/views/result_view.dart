import 'dart:async';
import 'dart:math';
import 'package:bmi_calculator_app/bloc/bim_calculation.dart';
import 'package:bmi_calculator_app/components/bmi_result_table.dart';
import 'package:bmi_calculator_app/components/colum_result.dart';
import 'package:bmi_calculator_app/components/graph.dart';
import 'package:bmi_calculator_app/components/ibm_app_bar.dart';
import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/components/oscilloscope_graph.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:bmi_calculator_app/views/bmi_calculator_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResultView extends StatefulWidget {
  BMICalculation b;

  ResultView(this.b);

  @override
  _ResultViewState createState() => _ResultViewState();
}
class _ResultViewState extends State<ResultView> {
  List<double> traceSine = [];
  List<double> traceCosine = [];
  double radians = 0.0;
  Timer? _timer;
  _generateTrace(Timer t) {
    var sv = sin((radians * pi));
    var cv = cos((radians * pi));
    setState(() {
      traceSine.add(sv);
      traceCosine.add(cv);
    });
    radians += 0.05;
    if (radians >= 2.0) {
      radians = 0.0;
    }
  }
  @override
  initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 60), _generateTrace);
  }
  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //print(widget.b.user.age);
    return Scaffold(
      appBar: BMIAppBar(BMIIcon(Icons.arrow_back_ios,Colors.blue,25),BMIIcon(Icons.notifications,Colors.blue,25),BMICalculatorView(widget.b.user)),
      body: Container( color: Colors.white,
        child: Column(
          children: [
            Expanded(flex:2,child:  Column(
              children: [
                TextInfo('Heart Plus', 20,FontStyle.normal,Colors.blue),
                OscilloscopeGraph(traceSine),
              ],
            ),),
            Expanded(flex: 2,child: Column(
              children: [
                 TextInfo('Graph Result', 20,FontStyle.normal,Colors.blue),
                  Expanded(child: Graph()),
              ],
            )),
            Expanded(flex: 1,
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextInfo('Table Information', 20,FontStyle.normal,Colors.blue),
                    ),
                    Expanded(child: BMIResultTable(widget.b.user.weight,widget.b.user.height,widget.b.user.age,widget.b.user.gender,widget.b.getBMI().floorToDouble())),
                  ],
                )),
            SizedBox(height: 4,),
            Expanded(flex: 3,
              child: Container(
                color: Colors.blue ,
                child: ColumResult(widget.b.user),
              ),
            ),
          ],
        ),
      ),
    );
  }
}