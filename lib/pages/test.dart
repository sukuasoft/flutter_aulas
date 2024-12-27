import 'package:flutter/material.dart';

class TestPage extends StatelessWidget{

  // layout

  // column
  // row
  // stack

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all()
        ),
        width: 200,
        height: 200,
        child: Stack(children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,

        ), 
         Center(child: Container(
          width: 50,
          height: 50,
          color: Colors.blue,

        )), 

        Align(
          alignment: Alignment.topRight,
        child: Container(
          width: 50,
          height: 50,
          color: Colors.green,
        ),
        ), 

    Align(
      alignment: Alignment.bottomLeft,
    child: Image.asset('assets/images/onboarding.png', 
  width: 50,),
    ),

       Positioned(
        left: 150,// x
        top: 150 ,// y
       
        child:  Container(
          width: 50,
          height: 50,
          color: Colors.yellow,
        ), 
        
        )
      ],)
      )
    );
  }

}