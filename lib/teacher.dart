import 'package:flutter/material.dart';
import 'package:e_learning/Components/teacaher.dart';
import 'package:e_learning/filter.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              child: const Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const Filters()));
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Top teacher this month',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              TeacherList(
                text1: 'Sammuel Jonass',
                text2: '@jdoe',
                text3: 'Follow',
                image: 'assets/image/Sammuel.png',
              ),
              SizedBox(
                height: 20,
              ),
              TeacherList(
                text1: 'Mohammad Salah',
                text2: '@jdoe',
                text3: 'View',
                image: 'assets/image/Mohammad.png',
              ),
              SizedBox(
                height: 20,
              ),
              TeacherList(
                text1: 'Arafat Jamil',
                text2: '@arafatj',
                text3: 'view',
                image: 'assets/image/Arafat.png',
              ),
              SizedBox(
                height: 20,
              ),
              TeacherList(
                text1: 'Sammuel Jonass',
                text2: '@sammj',
                text3: 'view',
                image: 'assets/image/Jonass.png',
              ),
              SizedBox(
                height: 20,
              ),
              TeacherList(
                text1: 'Irene Joe',
                text2: '@irenee',
                text3: 'view',
                image: 'assets/image/Irene.png',
              ),
              SizedBox(
                height: 20,
              ),
              TeacherList(
                text1: 'Nattale Gromi',
                text2: '@ngromi',
                text3: 'view',
                image: 'assets/image/Nattale.png',
              ),
              SizedBox(
                height: 20,
              ),
              TeacherList(
                text1: 'Michel Pheleps',
                text2: '@pheleps',
                text3: 'view',
                image: 'assets/image/Michel.png',
              ),
              SizedBox(
                height: 20,
              ),
              TeacherList(
                text1: 'Samur Jordan',
                text2: '@jdoe',
                text3: 'Follow',
                image: 'assets/image/Samur.png',
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
