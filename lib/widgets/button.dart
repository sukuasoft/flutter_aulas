import 'package:flutter/material.dart';

enum TypeButton{
  Primario, 
  Secundario
}

class Button extends StatelessWidget {
  const Button({super.key,  this.type=TypeButton.Primario,
   required this.text, this.action});
   

  final String text;
  final TypeButton type;
  final Function? action;
  

  @override
  Widget build(BuildContext context) {
 
    return InkWell(
      onTap: (){
        if(action != null){
          action!();
        }
      },
      child: Container(
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: type == TypeButton.Primario ? Color(0xffd4ee06):
        Colors.white, 

        border: type == TypeButton.Primario ? null : Border.all(width: 2)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20, 
        vertical: 12
      ),
      child: Text(text, textAlign: TextAlign.center,),
    )
    );
  }
}