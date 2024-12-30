import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  String status = '';
  final keyForm = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  void registrar () async{

    if(keyForm.currentState!.validate()){
      String email = emailController.text;
      String password = passwordController.text;

    try{
        final result = await FirebaseAuth.instance.createUserWithEmailAndPassword
      (email: email, password: password);
    
      if (result.user != null){
        print('Conta criada');
        setState(() {
          status = 'Seu ID: ${result.user!.uid}';
        });
        return;


      }
      throw 'Houve um problema';

    }
    on FirebaseAuthException catch (e){
      print(e.code);
    }
    catch (e){
      print(e);
      
    }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Column(
      children: [
          TextFormField(
          controller: emailController,
         keyboardType: TextInputType.emailAddress,
            validator: (value){
              if (value == null || value.isEmpty) return 'Este não pode estar vázio';
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Email'
            ),
          ), 
          TextFormField(
            controller: passwordController,
            obscureText: true,
            validator: (value){
              if (value == null || value.isEmpty) return 'Este não pode estar vázio';
              if(value.length < 6) return 'Sua senha precisa de 6 caracteres';
            
              return null;
            },
            decoration:  InputDecoration(
              hintText: 'Senha'
            ),
          ), 
  SizedBox(height: 10,),
          ElevatedButton(onPressed: registrar, child: Text('Registrar')),
          SizedBox(height: 15,),

          Text(status)

      ],
    ));
  }
}