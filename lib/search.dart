import 'package:flutter/material.dart';
import 'package:e_learning/Components/category1.dart';
import 'package:e_learning/searchresult.dart';

import 'Components/formfield.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  child: FieldForms(
                    name: 'Graphic illustration',
                    icons: InkWell(
                      child: const Icon(
                        Icons.search,
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchResult()));
                      },
                    ),
                    iconcolor: Colors.grey,
                    flag: false,
                    color: const Color(0xffFFF1F3),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffFFF1F3)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    bd: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0xffFFF1F3)),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchResult()));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Top searches',
                  style: TextStyle(fontSize: 15, color: Color(0xff585D69)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 110,
                      decoration: BoxDecoration(
                          color: const Color(0xffd6d6d6),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        'Photography',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff282F3E)),
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 45,
                      width: 70,
                      decoration: BoxDecoration(
                          color: const Color(0xffd6d6d6),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        'Craft',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff282F3E)),
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 45,
                      width: 55,
                      decoration: BoxDecoration(
                          color: const Color(0xffd6d6d6),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        'Art',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff282F3E)),
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xffd6d6d6),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        'Procreate',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff282F3E)),
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xffd6d6d6),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        'Marketing',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff282F3E)),
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xffd6d6d6),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        'Ux Design',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff282F3E)),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Categories',
              style: TextStyle(color: Color(0xff585D69), fontSize: 15),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Category1(
                              text1: '3D Animation',
                              image1: 'assets/image/Animation.png',
                              h: 120,
                              w: 135,
                              h1: 85),
                          const SizedBox(
                            width: 10,
                          ),
                          Category1(
                              text1: 'Marketing',
                              image1: 'assets/image/marketing.png',
                              h: 120,
                              w: 135,
                              h1: 85),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Category1(
                              text1: 'Photography',
                              image1: 'assets/image/photography.png',
                              h: 120,
                              w: 135,
                              h1: 85),
                          const SizedBox(
                            width: 10,
                          ),
                          Category1(
                              text1: 'Calligraphy &\nlettering',
                              image1: 'assets/image/lettring.png',
                              h: 120,
                              w: 135,
                              h1: 85),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Category1(
                              text1: 'UX design',
                              image1: 'assets/image/uxdesign.png',
                              h: 120,
                              w: 135,
                              h1: 85),
                          const SizedBox(
                            width: 10,
                          ),
                          Category1(
                              text1: 'Web develop',
                              image1: 'assets/image/webdeveloper.png',
                              h: 120,
                              w: 135,
                              h1: 85),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Category1(
                              text1: 'Interior design',
                              image1: 'assets/image/Category .png',
                              h: 120,
                              w: 135,
                              h1: 85),
                          const SizedBox(
                            width: 10,
                          ),
                          Category1(
                              text1: 'Traditional art',
                              image1: 'assets/image/Category 2.png',
                              h: 120,
                              w: 135,
                              h1: 85),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
