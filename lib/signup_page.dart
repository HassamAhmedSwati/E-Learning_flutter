import 'package:flutter/material.dart';
import 'package:e_learning/Components/button1.dart';
import 'package:e_learning/Login_Page.dart';
import 'package:e_learning/signup_page_form.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Center(
                    child: Text(
                  'Welcome!\nSign up to continue!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPageForm()));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Center(
                            child: Image(
                          image: AssetImage(
                            'assets/image/Google.png',
                          ),
                          height: 30,
                          width: 30,
                        )),
                        SizedBox(
                          width: 30,
                        ),
                        Center(
                          child:  Text(
                        'Sign up with Google',
                        style:  TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPageForm()));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Center(
                            child: Image(
                          image: AssetImage(
                            'assets/image/facebook.png',
                          ),
                          height: 30,
                          width: 30,
                        )),
                        SizedBox(
                          width: 30,
                        ),
                        Center(
                          child: Text(
                            'Sign up with Facebook',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xff585D69)),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupPageForm()));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Sign up with email',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'By signing up you are agreed with our \n friendly terms and condition.',
                  style: TextStyle(fontSize: 14, color: Color(0xff404653)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
          const Text(
            'Already have an account?',
            style: TextStyle(fontSize: 16, color: Color(0xff383838)),
          ),
          const SizedBox(
            height: 30,
          ),
          Button1(
              name: 'Sign in',
              backcolor: Colors.white,
              color: Colors.blueAccent,onpress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
          },
          ),
        ],
      ),
    );
  }
}
