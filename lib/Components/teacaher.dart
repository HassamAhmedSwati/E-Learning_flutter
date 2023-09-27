import 'package:flutter/material.dart';

class TeacherList extends StatelessWidget {
  final String text1, text2, text3, image;
  final double?h1;
  const TeacherList({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
    this.h1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundImage: AssetImage(image),radius: h1,
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 40,width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text2,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 41,
          width: 77,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xffEEEEF0)),
          child: Center(
              child: Text(
            text3,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )),
        )
      ],
    );
  }
}
