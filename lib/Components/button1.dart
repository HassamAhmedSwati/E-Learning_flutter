import 'dart:ffi';

import 'package:flutter/material.dart';
class Button1 extends StatelessWidget {
  final String name;
  final Color color,backcolor;
  VoidCallback? onpress;
   Button1({Key?key,required this.name,required this.backcolor, required this.color,this.onpress }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:backcolor ),
            child: Center(child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: color,fontSize: 20)),),
        ),
      ),
    );
  }
}
