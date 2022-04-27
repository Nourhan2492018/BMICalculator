import 'package:bmi_calculator_app/bloc/bim_calculation.dart';
import 'package:bmi_calculator_app/views/bmi_calculator.dart';
import 'package:bmi_calculator_app/views/login_view.dart';
import 'package:bmi_calculator_app/views/result_view.dart';
import 'package:bmi_calculator_app/views/splash_view.dart';
import 'package:flutter/material.dart';
class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
