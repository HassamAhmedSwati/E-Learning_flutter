import 'package:flutter/material.dart';
import 'package:e_learning/Components/button1.dart';
import 'package:e_learning/reset_password.dart';

class SentEmail extends StatefulWidget {
  const SentEmail({super.key});

  @override
  State<SentEmail> createState() => _SentEmailState();
}

class _SentEmailState extends State<SentEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 80,),
          const Center(child: Text('Check your email',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)),
          const SizedBox(height: 10,),
          const Text('We’ve sent a password recover instruction\n to your email',textAlign: TextAlign.center,style: TextStyle(color: Color(0xff888C94),fontSize: 14),),
          const SizedBox(height: 60,),
          const Image(image: AssetImage('assets/image/forgot.png')),
          const SizedBox(height: 50,),
          Button1(name: 'Open email app', backcolor: Colors.blueAccent, color: Colors.white,onpress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetPassword()));
          },),
          const SizedBox(height: 20,),
          const Text('Will do it later',style: TextStyle(fontSize: 16,color: Colors.blueAccent,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          const SizedBox(height: 80,),
          const Text('Didn’t get any email? Check your spam\nfolder or try again with a valid email.',style: TextStyle(fontSize: 14,color: Color(0xff70747E)),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
