import 'package:flutter/material.dart';
import 'package:e_learning/Components/Screen1.dart';
import 'package:e_learning/Components/button1.dart';
import 'package:e_learning/Login_Page.dart';
import 'package:e_learning/signup_page.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:const EdgeInsets.symmetric(vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Screen1(
                    image1: 'assets/image/img.jpg',
                    text1: 'Better way to learn \n is calling you!',
                    text2:
                        'Impete viverra vivamus porttior ules ac vulte \n lectus velit sen lectus ue',
                    flag1: true,
                  ),
                  Screen1(
                    image1: 'assets/image/img.jpg',
                    text1: 'Find yourself by doing \n whatever you do!',
                    text2:
                        'Impete viverra vivamus porttior ules ac vulte \n lectus velit sen lectus ue',
                    flag2: true,
                  ),
                  Screen1(
                    image1: 'assets/image/img.jpg',
                    text1: 'It is not just learning,\n it is a promise!',
                    text2:
                        'Impete viverra vivamus porttior ules ac vulte \n lectus velit sen lectus ue',
                    flag3: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Button1(
              name: 'Registration',
              color: Colors.white,
              backcolor: Colors.blueAccent,
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            Button1(
              name: 'Login',
              color: Colors.blueAccent,
              backcolor: Colors.grey.withOpacity(0.2),
              onpress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
