import 'package:flutter/material.dart';

class ResultComponent extends StatelessWidget {
  final IconData icon, icon1;
  final double h, w,h1;
  final String text, text1, text2, text3, image;
  const ResultComponent({
    Key? key,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
    required this.icon,
    required this.icon1,
    required this.h,
    required this.h1,
    required this.w,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: h,
            width: w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(h1)),
              image: DecorationImage(
                image: AssetImage(image),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(text1,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff282F3E),
                  )),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    color: const Color(0xff70747E),
                    size: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        color: Color(0xff70747E), fontSize: 14),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Icon(
                    icon1,
                    color: Colors.orangeAccent,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    text3,
                    style: const TextStyle(
                        color: Color(0xff70747E), fontSize: 14),
                  ),
                ],
              )
            ],
          )
        ]);
  }
}
