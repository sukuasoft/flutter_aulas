import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/form_register.dart';

class FirebaseScreen extends StatelessWidget {
  const FirebaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 20, 
          horizontal: 20
        ),
        child: Row(
        children: [
       Expanded(child:    Column(
            children: [
              FormRegister()
            ],
          ))
        ],
      ),
      ))
    );
  }
}