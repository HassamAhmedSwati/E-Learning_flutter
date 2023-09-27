import 'package:flutter/material.dart';
class Button2 extends StatelessWidget {
  final String name;
  double h,r,h1,w;
  final Color color,backcolor;
  VoidCallback? onpress;
  Button2({Key?key,required this.name,required this.backcolor, required this.color,this.onpress,required this.h,required this.w,required this.r,required this.h1 }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: h1),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(r), color:backcolor ),
          child: Center(child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: color,fontSize: 20)),),
        ),
      ),
    );
  }
}