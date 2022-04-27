import 'package:bmi_calculator_app/components/bmi_icon_button.dart';
import 'package:bmi_calculator_app/components/ibm_icon.dart';
import 'package:bmi_calculator_app/views/login_view.dart';
import 'package:flutter/material.dart';
class BMIAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// you can add more fields that meet your needs
  BMIIcon icon1,icon2;
  Widget screen;
  BMIAppBar(this.icon1, this.icon2,this.screen);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(1),
      leading:BMIIconButton(icon1,Colors.blue,20,LoginView()),
      title: Text(''),
      actions: [
        BMIIconButton(icon2,Colors.blue,20,screen),

      ],
    );
  }
  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}