import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:e_learning/Components/bottomnavigationbar.dart';
import 'package:e_learning/Components/button1.dart';
import 'package:e_learning/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<void> _showDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Stack(children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                color: Colors.grey.withOpacity(0.2),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 160),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Text(
                            'Choose an account',
                            style: TextStyle(
                              fontSize: 25,
                              wordSpacing: -5,
                              letterSpacing: -1.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            'To continue to Tik Tak',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              wordSpacing: -4,
                              letterSpacing: -1,
                              color: Color(0xff888C94),
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/image/hassam.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Account Name',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        wordSpacing: -3,
                                        letterSpacing: -1,
                                        color: Color(0xff404653),
                                        decoration: TextDecoration.none),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'email@gmail.com',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff5F6368),
                                        wordSpacing: -1,
                                        letterSpacing: -.5,
                                        decoration: TextDecoration.none),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              // Text('Account Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Image(image: AssetImage('assets/image/User.png')),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Use another account',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff404653),
                                    wordSpacing: -6,
                                    letterSpacing: -1.5,
                                    decoration: TextDecoration.none),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'To continue, Google will share your \nname, email address,and profile \npicture with TikTak.',
                            style: TextStyle(
                                fontSize: 14,
                                wordSpacing: -1,
                                letterSpacing: -1,
                                color: Color(0xff9FA3A9),
                                decoration: TextDecoration.none),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            'Welcome Back!\nSign in to continue!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Center(
                          child: Image(
                        image: AssetImage(
                          'assets/image/Google.png',
                        ),
                        height: 30,
                        width: 30,
                      )),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        child: const Center(
                          child: Text(
                            'Log in with Google',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: () {
                          _showDialog(context);
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Center(
                          child: Image(
                        image: AssetImage(
                          'assets/image/facebook.png',
                        ),
                        height: 30,
                        width: 30,
                      )),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        child: const Center(
                          child: Text(
                            'Log in with Facebook',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onTap: (){
                          _showDialog(context);
                        },
                      )
                    ],
                  ),
                ),
              ],
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'password',
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Button1(
            name: 'Log in',
            backcolor: Colors.blueAccent,
            color: Colors.white,
            onpress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Navigation()));
            },
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword()));
              },
              child: const Text(
                'Forgot password',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
