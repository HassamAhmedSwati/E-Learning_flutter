import 'package:flutter/material.dart';

class FieldForms extends StatelessWidget {
  final String name;
  Widget? icons;
  bool flag;
  Color color;
  Color? iconcolor;
  InputBorder? border,bd;
  VoidCallback? onpress;
  FieldForms({required this.name,this.icons,this.flag=false,this.color=Colors.white60,this.iconcolor,this.border,this.bd,this.onpress});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: name,
          suffixIcon: icons,
          suffixIconColor:iconcolor,
          filled: true,
          fillColor: color,
          enabledBorder: border,
          focusedBorder: bd,
        ),
        cursorColor: Colors.grey,
        obscureText: flag,
      ),
    );
  }

}

