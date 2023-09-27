import 'package:flutter/material.dart';

class Category3 extends StatelessWidget {
  String text1, text2, image1, image2;
  double h, w, h1, h2;
  Alignment alignment;
  Color? color;
  Category3(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.alignment,
      required this.image1,
      required this.image2,
      required this.h,
      required this.w,
      required this.h1,
      required this.h2,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage(image1),
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        height: 160,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage(image2),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: h1),
        child: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
              color: color),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: h2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: alignment,
                  child: Text(
                    text1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: alignment,
                  child: Text(
                    text2,
                    style: const TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
