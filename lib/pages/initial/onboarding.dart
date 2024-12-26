import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Stack(
          children: [
             Center(
              child:  Image.asset('assets/images/onboarding.jpg', width: 300,),
             ), 
             Container(
              
             )
          ],
        )

      ],)
      )
    );
  }
}