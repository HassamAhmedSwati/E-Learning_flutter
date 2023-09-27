import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final String image1, text1, text2;
  final bool flag1, flag2, flag3;
  const Screen1(
      {Key? key,
      required this.image1,
      required this.text1,
      required this.text2,
      this.flag1 = false,
      this.flag2 = false,
      this.flag3 = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  Center(
                      child: Image(
                        image: AssetImage(image1),
                        height: 160,
                        width:160,
                      )),
                  const SizedBox(height: 60,),
                  Center(
                    child: Text(
                      text1,textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      text2,
                      style: const TextStyle(color: Color(0xff9FA3A9)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    children: [
                      Icon(Icons.fiber_manual_record,size: flag1==true? 17:10,color: flag1==true?Colors.black:Colors.grey,),
                      Icon(Icons.fiber_manual_record,size: flag2==true? 17:10,color: flag2==true?Colors.black:Colors.grey,),
                      Icon(Icons.fiber_manual_record,size: flag3==true? 17:10,color: flag3==true?Colors.black:Colors.grey,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
