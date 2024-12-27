import 'package:flutter/material.dart';
import 'package:flutter_app/pages/initial/onboarding.dart';
import 'package:flutter_app/pages/initial/splash_screen.dart';
import 'package:flutter_app/pages/test.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Onboarding()
    );
  
  }
}