import 'dart:math';

import 'package:bmi_calculator_app/models/user.dart';
class BMICalculation{
User user;
BMICalculation(this.user);
double getBMI()
{
  return user.weight/ pow(user.height/100, 2);
}
}