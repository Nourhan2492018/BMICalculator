import 'package:bmi_calculator_app/components/ibm_app_bar.dart';
import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
class Graph extends StatelessWidget {
  final List<Feature> features = [
    Feature(
      title: "Drink Water",
      color: Colors.blue,
      data: [0.2,-0.3,-0.1,0.2,0.5,0.3,0.0,0.9,0.3, 0.4,0.8, 0.4, 0.7, 0.6,0.02,0.4],
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return  LineGraph(
        features: features,
        size: Size(1000, 400),
        labelX: ['Day 1', 'Day 2','Day 3','Day 3','Day 3', 'Day 3', 'Day 4', 'Day 5','Day 1','Day 1','Day 1','Day 1','Day 1','Day 1','Day 1''Day 1''Day 1','Day 1''Day 1'],
        labelY: ['20%', '40%', '60%', '80%','80%','80%','80%','80%','80%', '100%'],

        graphColor: Colors.white,
        showDescription:false,
        graphOpacity: 0.0,

      );
  }
}
