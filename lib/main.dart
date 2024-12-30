import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_options.dart';
import 'package:flutter_app/pages/firebase_screen.dart';
import 'package:flutter_app/pages/initial/onboarding.dart';
import 'package:flutter_app/pages/initial/splash_screen.dart';
import 'package:flutter_app/pages/test.dart';


void main()async{
  //garantir tudo esteja ativo
  WidgetsFlutterBinding.ensureInitialized();

  //inicializar o firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: FirebaseScreen()
    );
  
  }
}