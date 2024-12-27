import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // imagem com fundo
                    SizedBox(
                      child: Stack(
                        children: [
                          //background
                          Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Color(0xffBFE3F3), Colors.white])),
                          ),

                          //imagem
                          Center(
                            child: Image.asset(
                              'assets/images/onboarding.png',
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                          )
                        ],
                      ),
                    
                      height: 250,
                    ),
                    Expanded(child: Container(
                    
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 80,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Button(text: 'Entrar'),
                          SizedBox(height: 10,),
                          Button(type: TypeButton.Secundario, text: 'Registrar'), 
                          Expanded(child: Container()),
                          TextButton(child: Text('Continuar como convidado', 
                          style: TextStyle(
                            color: Color(0xff34C2C1), 
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline, 
                            decorationColor: Color(0xff34C2C1), 
                          ),
                          textAlign: TextAlign.center,),
                          onPressed: (){},)
                        ],
                      ),
                    ))
                  ],
                ))));
  }
}
