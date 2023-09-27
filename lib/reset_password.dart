import 'package:flutter/material.dart';
import 'package:e_learning/Components/button1.dart';
import 'package:e_learning/Components/formfield.dart';
import 'package:e_learning/forgot_password_email.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100,),
          InkWell(
            onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=>const SentEmail()));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Reset your password',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FieldForms(name: 'Enter new password',icons: const Icon(Icons.remove_red_eye),flag: true,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FieldForms(name: '**************',icons: const Icon(Icons.remove_red_eye),flag: true,),
          ),
          const SizedBox(height: 40,),
          Button1(name: 'Reset', backcolor: Colors.blueAccent, color: Colors.white),
        ],
      ),
    );
  }
}
