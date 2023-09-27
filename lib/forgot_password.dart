import 'package:flutter/material.dart';
import 'package:e_learning/Components/button1.dart';
import 'package:e_learning/Components/formfield.dart';
import 'package:e_learning/Login_Page.dart';
import 'package:e_learning/forgot_password_email.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Enter your email',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: FieldForms(
                name: 'email address',
                icons: const Icon(Icons.remove_red_eye),
                flag: true,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Text('The email address you provided is not associated \n with your account',style: TextStyle(color: Colors.red),),
            const SizedBox(
              height: 80,
            ),
            Button1(
              name: 'sent email',
              backcolor: Colors.blueAccent,
              color: Colors.white,
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SentEmail()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
