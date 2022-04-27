import 'package:bmi_calculator_app/bloc/bim_calculation.dart';
import 'package:bmi_calculator_app/bloc/valid_authentication.dart';
import 'package:bmi_calculator_app/components/button.dart';
import 'package:bmi_calculator_app/components/text_from_felid.dart';
import 'package:bmi_calculator_app/components/text_info.dart';
import 'package:bmi_calculator_app/models/user.dart';
import 'package:bmi_calculator_app/views/bmi_calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  var email=TextEditingController();
  var pass=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.white,elevation: 0,),
      body: SingleChildScrollView(
        child: Container(color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical:30,
              horizontal: 20,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(2000.0),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        height: 150,
                        width: 150,
                        image: NetworkImage('https://t4.ftcdn.net/jpg/04/66/11/71/360_F_466117148_DNfFCiAR3L0jUy8byxOUImWp5eDuwx9p.jpg'),
                      ),
                    ),
                    SizedBox(height: 30,),


                    TextFromFiled(Icon(Icons.email_outlined), email, 'Email', 'enter your email',TextInputType.emailAddress,false),
                    SizedBox(height: 15,),
                    TextFromFiled(Icon(Icons.lock), pass, 'Password', 'enter your pass',TextInputType.visiblePassword,true,suficon: Icon(Icons.remove_red_eye_outlined)),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed:(){
                      User u=User(email.value.text,pass.value.text,0,0,0,'');
                      ValidAuthentication b=ValidAuthentication(u);
                      if (_formKey.currentState!.validate()) {
                        if(b.Check())
                          {
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder:(context)=>BMICalculatorView(),
                              ),
                            );
                          }
                        else
                          {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content:Text('Fail Data'),),
                            );
                          }
                      }
                    },
                      child: Text('   Login   ',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      elevation: 3,
                      color: Colors.white,
                      clipBehavior:Clip.antiAliasWithSaveLayer,
                      child:TextInfo("if you haven't Account ?", 20,FontStyle.normal,Colors.blue),
                    ),
                    SizedBox(height: 20,),
                    Button(this.pass, this.email, BMICalculatorView(),Icon(Icons.login,color: Colors.white),'Register Now'),
                  ]),
            ),

          ),

        ),
      ),
    );
  }
}
