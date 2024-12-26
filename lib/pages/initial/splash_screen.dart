import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(14, 88, 71, 1),
        child: Center(
          child: 
          Image(image: AssetImage('assets/images/logo.png')),
        ),
      )
    );
  }
}