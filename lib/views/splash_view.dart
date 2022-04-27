
import 'package:bmi_calculator_app/views/login_view.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:splashscreen/splashscreen.dart';
class SplashView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.white,elevation: 0,),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 150,),
          child: SplashScreen(
            seconds: 16,
            navigateAfterSeconds: new LoginView(),
            title: new Text('',textScaleFactor: 2,),
            image: new Image.network('https://t4.ftcdn.net/jpg/04/66/11/71/360_F_466117148_DNfFCiAR3L0jUy8byxOUImWp5eDuwx9p.jpg'),
            loadingText: Text(""),
            photoSize: 100.0,
            loaderColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

