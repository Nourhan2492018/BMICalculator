import 'package:flutter/material.dart';
import 'package:oscilloscope/oscilloscope.dart';

class OscilloscopeGraph extends StatelessWidget {

  List<double> traceSine;

  OscilloscopeGraph(this.traceSine);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Oscilloscope(
        showYAxis: true,
        yAxisColor: Colors.white,
        margin: EdgeInsets.all(20.0),
        strokeWidth: 1.0,
        backgroundColor: Colors.white,
        traceColor: Colors.blue,
        yAxisMax: 1.0,
        yAxisMin: -1.0,
        dataSet: traceSine,
      ),
    );
  }
}
