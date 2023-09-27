import 'package:flutter/material.dart';

class Category2 extends StatelessWidget {
  final String text1, image1, text2, text3, text4, text5;
  final double h, w, h1, v1;
  final Color color, c1,c2,c3;
  final IconData icon, icon1, icon2, icon3;

  Alignment alignment;
  Category2({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.c1,
    required this.c2,
    required this.c3,
    required this.icon,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.image1,
    required this.h,
    required this.w,
    required this.color,
    required this.h1,
    required this.v1,
    required this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: AssetImage(image1),
              filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
            ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: h1, vertical: v1),
            child: Container(
              height: h,
              width: w,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(9)),
              child: Align(
                alignment: alignment,
                child: Center(
                    child: Text(
                  text1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                  textAlign: TextAlign.start,
                )),
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 5,
        ),
        Text(text2,style: TextStyle(fontSize: 15,color: c2,fontWeight: FontWeight.bold),),
        const SizedBox(
          height: 5,
        ),
        Text(text3,style: TextStyle(fontSize:12,color: c3,),textAlign: TextAlign.start,),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(text4,style: const TextStyle(fontSize: 12),),
            const SizedBox(
              width: 2,
            ),
            Icon(
              icon,size: 15,
              color: c1,
            ),
            const SizedBox(
              width: 2,
            ),
            Icon(
              icon1,size: 15,
              color: c1,
            ),
            const SizedBox(
              width: 2,
            ),
            Icon(
              icon2,size: 15,
              color: c1,
            ),
            const SizedBox(
              width: 2,
            ),
            Icon(
              icon3,size: 15,
              color: c1,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(text5,style: const TextStyle(fontSize: 12),),
          ],
        ),
      ],
    );
  }
}
