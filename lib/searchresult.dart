import 'package:flutter/material.dart';
import 'package:e_learning/Components/formfield.dart';
import 'package:e_learning/Components/searchresult.dart';
import 'package:e_learning/filter.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            FieldForms(
              name: 'Graphic illustrtion',
              color: const Color(0xffFFF1F3),
              iconcolor: Colors.grey,
              icons: const Icon(Icons.search_outlined),
              bd: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xffFFF1F3))),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffFFF1F3)),
                  borderRadius: BorderRadius.circular(20)),
              flag: false,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your search result',
                    style: TextStyle(color: Color(0xff585D69), fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  InkWell(
                    child: const Image(
                      image: AssetImage('assets/image/filter.png'),
                      color: Color(0xff585D69),
                      height: 25,
                      width: 25,
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Filters()));
                    },
                  ),
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ResultComponent(
                    text: 'Adobe illustrator for all\nbeginner artist',
                    text1: 'Samule Doe',
                    text2: '4k student',
                    text3: '4.7',
                    image: 'assets/image/artest.png',
                    icon: Icons.person_outline,
                    icon1: Icons.star,
                    h: 100,
                    w: 80,
                    h1: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ResultComponent(
                      text: 'Digital illustration \ntechnique for procrete',
                      text1: 'Sarrah Morry',
                      text2: '2k student',
                      text3: '4.0',
                      image: 'assets/image/digital.png',
                      icon: Icons.person_outline,
                      icon1: Icons.star,
                      h: 100,
                      h1: 15,
                      w: 80),
                  SizedBox(
                    height: 20,
                  ),
                  ResultComponent(
                      text: 'Learn how to draw \ncartoon face easy way!',
                      text1: 'Sarrah Morry',
                      text2: '1k student',
                      text3: '4.2',
                      image: 'assets/image/cartoon.png',
                      icon: Icons.person_outline,
                      icon1: Icons.star,
                      h: 100,
                      h1: 15,
                      w: 80),
                  SizedBox(
                    height: 20,
                  ),
                  ResultComponent(
                      text: 'Sketch book essential\nfor everyone!',
                      text1: 'Sarrah Morry',
                      text2: '2k student',
                      text3: '4.0',
                      image: 'assets/image/sketch.png',
                      icon: Icons.person_outline,
                      icon1: Icons.star,
                      h: 100,
                      h1: 15,
                      w: 80),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
