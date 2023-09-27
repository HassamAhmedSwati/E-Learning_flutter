import 'package:flutter/material.dart';
import 'package:e_learning/Components/button1.dart';
import 'package:e_learning/Components/formfield.dart';
import 'package:e_learning/signup_page.dart';

class SignupPageForm extends StatefulWidget {
  const SignupPageForm({super.key});

  @override
  State<SignupPageForm> createState() => _SignupPageFormState();
}

class _SignupPageFormState extends State<SignupPageForm> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100,),
          InkWell(
            onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=>const SignupPage()));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Text('Enter your details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.start,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
               const SizedBox(height: 40,),
                FieldForms(name: 'username'),
                const SizedBox(height: 10,),
                FieldForms(name: 'emailaddress'),
                const SizedBox(height: 10,),
                FieldForms(name: '***************',icons: const Icon(Icons.remove_red_eye_outlined),flag: true),
                const SizedBox(height: 10,),
                FieldForms(name: 'confirm password',icons:const Icon(Icons.remove_red_eye_outlined),flag: true,),
                const SizedBox(height: 150,),
              ],
            ),
          ),
          Button1(name: 'Continue', backcolor: Colors.blueAccent, color: Colors.white),
        ],
      ),
    );
  }
}
