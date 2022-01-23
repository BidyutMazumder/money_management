import 'dart:async';

import 'package:first/screen/home.dart';
import 'package:first/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  //Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home(),),),);


  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()),),);
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.lightBlueAccent,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Joma ↓",
                style: large,
              ),
              Text(
                "Khoros ↑",
                style: large,
              ),
              SizedBox(
                height: 10,
              ),
              SpinKitWave(
                color: Colors.blueGrey,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
