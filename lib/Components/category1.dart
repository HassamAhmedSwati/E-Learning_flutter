import 'package:flutter/material.dart';

class Category1 extends StatelessWidget {
  String text1,image1;
  double h, w,h1;
  Color?color;
  Category1({Key?key,required this.text1,required this.image1,required this.h,required this.w,required this.h1,this.color}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(children: [
        Container(
        height: h,
        width: w,
        decoration: BoxDecoration(color: color,borderRadius:const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(image: AssetImage(image1),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
          ),
        ),
      ),
        Padding(
          padding: EdgeInsets.only(top: h1),
          child: Center(
              child: Text(
                text1,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
                textAlign: TextAlign.end,
              )),
        ),
      ]),
    );
  }
}
