import 'package:bmi_calculator_app/models/user.dart';

class ValidAuthentication{

User user;

ValidAuthentication(this.user);

bool Check()
{
  if(user.email=='nourhanmahmoud246@gmail.com')
    {
     if(user.pass=='1234')
       {
         return true;
       }
    }
  return false;
}
}