import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String text1,text2,text3;

   Category({Key?key,required this.text1,required this.text2,required this.text3}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff282F3E)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text2,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff282F3E)),
            ),
            const SizedBox(
              width: 60,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  text3,
                  style:
                  const TextStyle(fontSize: 14, color: Color(0xff70747E)),
                  textAlign: TextAlign.end,
                ))
          ],
        ),
      ],
    );
  }
}
