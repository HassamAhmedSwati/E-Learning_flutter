import 'package:flutter/material.dart';
import 'package:e_learning/Components/category.dart';
import 'package:e_learning/Components/category1.dart';
import 'package:e_learning/Components/category2.dart';
import 'package:e_learning/Components/formfield.dart';
import 'package:e_learning/category3.dart';
import 'package:e_learning/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hola, sayef!',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'What do you wanna learn today?',
                      style: TextStyle(fontSize: 14, color: Color(0xff70747E)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/image/hassam.png'),
                radius: 25,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: FieldForms(
                  name: 'Graphic illustration',
                  icons: const Icon(Icons.search),
                  color: const Color(0xffFFF1F3),
                  iconcolor: const Color(0xff888C94),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffFFF1F3)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  bd: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Color(0xffFFF1F3))),
                ),
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Search()));
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height ,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Category(
                            text1: 'Popular category',
                            text2: 'our in platform',
                            text3: '\nsee more',
                          ),
                          const SizedBox(
                            height: 20,
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
                                h1: 85,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Category1(
                                text1: 'Traditional art',
                                image1: 'assets/image/Category 2.png',
                                h: 120,
                                w: 135,
                                h1: 85,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Category(
                            text1: 'Most watching',
                            text2: 'category in month',
                            text3: '\nsee more',
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Category2(
                                    text1: 'New',
                                    image1: 'assets/image/Html Css.png',
                                    h: 25,
                                    w: 55,
                                    alignment: Alignment.topLeft,
                                    color: Colors.deepOrange,
                                    h1: 10,
                                    v1: 10,
                                    text2: 'HTML, CSS for noob\nand nerds! ',
                                    text3: 'Sayef Mamud, PixelCo',
                                    c2: const Color(0xff282F3E),
                                    c3: const Color(0xff585D69),
                                    text4: '4.0',
                                    text5: '(4051)',
                                    c1: Colors.orange,
                                    icon: Icons.star,
                                    icon1: Icons.star,
                                    icon2: Icons.star,
                                    icon3: Icons.star,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Category2(
                                    text1: 'Hot',
                                    image1: 'assets/image/interior.png',
                                    h: 25,
                                    w: 55,
                                    color: Colors.deepOrange,
                                    alignment: Alignment.topLeft,
                                    h1: 10,
                                    v1: 10,
                                    text4: '4.0',
                                    text5: '(55)',
                                    c1: Colors.orange,
                                    icon: Icons.star,
                                    icon1: Icons.star,
                                    icon2: Icons.star,
                                    icon3: Icons.star,
                                    text2:
                                        'Modern interior desgn\nfor beginner! ',
                                    text3: 'Samantha Rossye',
                                    c2:const Color(0xff282F3E),
                                    c3: const Color(0xff585D69),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Category(
                              text1: 'Our top popular',
                              text2: 'teacher this month',
                              text3: '\nsee more'),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Category3(
                                  text1: 'Sayef Mahmud',
                                  text2: 'Programmer',
                                  alignment: Alignment.bottomLeft,
                                  image1: 'assets/image/background.png',
                                  image2: 'assets/image/teacher1.png',
                                  h: 60,
                                  w: 140,
                                  h1: 130,
                                  h2: 10,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Category3(
                                  text1: 'Sarrah Morry',
                                  text2: 'Creative artist',
                                  alignment: Alignment.bottomLeft,
                                  image1: 'assets/image/background.png',
                                  image2: 'assets/image/teacher.png',
                                  h: 60,
                                  w: 140,
                                  h1: 130,
                                  h2: 10,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 162,
                            width: 335,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFF1F3),
                            ),
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Try free trial to enhance\nyour creative journey!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 22),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  'Get free trial',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Category(
                              text1: 'Continue to watch',
                              text2: 'previous class',
                              text3: '\nsee more'),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Category2(
                                    text1: 'Best Sell',
                                    image1: 'assets/image/clock.png',
                                    h: 25,
                                    w: 70,
                                    alignment: Alignment.topLeft,
                                    color: Colors.deepOrange,
                                    h1: 10,
                                    v1: 10,
                                    text2: 'Take care your home\nplants! ',
                                    text3: 'Sarrah Maningger',
                                    c2: const Color(0xff282F3E),
                                    c3: const Color(0xff585D69),
                                    text4: '4.0',
                                    text5: '(7051)',
                                    c1: Colors.orange,
                                    icon: Icons.star,
                                    icon1: Icons.star,
                                    icon2: Icons.star,
                                    icon3: Icons.star,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Category2(
                                    text1: 'New',
                                    image1: 'assets/image/interior.png',
                                    h: 25,
                                    w: 55,
                                    color: Colors.deepOrange,
                                    alignment: Alignment.topLeft,
                                    h1: 10,
                                    v1: 10,
                                    text4: '4.0',
                                    text5: '(551)',
                                    c1: Colors.orange,
                                    icon: Icons.star,
                                    icon1: Icons.star,
                                    icon2: Icons.star,
                                    icon3: Icons.star,
                                    text2:
                                        'Grow your creative\nbusiness with Insta! ',
                                    text3: 'Samantha Rossye',
                                    c2: const Color(0xff282F3E),
                                    c3: const Color(0xff585D69),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Category(
                              text1: 'What other are',
                              text2: 'watching in app',
                              text3: '\nsee more'),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Category2(
                                    text1: 'Best Sell',
                                    image1: 'assets/image/clock.png',
                                    h: 25,
                                    w: 70,
                                    alignment: Alignment.topLeft,
                                    color: Colors.deepOrange,
                                    h1: 10,
                                    v1: 10,
                                    text2: 'Take care your home\nplants! ',
                                    text3: 'Sarrah Maningger',
                                    c2: const Color(0xff282F3E),
                                    c3: const Color(0xff585D69),
                                    text4: '4.0',
                                    text5: '(7051)',
                                    c1: Colors.orange,
                                    icon: Icons.star,
                                    icon1: Icons.star,
                                    icon2: Icons.star,
                                    icon3: Icons.star,
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Category2(
                                    text1: 'New',
                                    image1: 'assets/image/interior.png',
                                    h: 25,
                                    w: 55,
                                    color: Colors.deepOrange,
                                    alignment: Alignment.topLeft,
                                    h1: 10,
                                    v1: 10,
                                    text4: '4.0',
                                    text5: '(551)',
                                    c1: Colors.orange,
                                    icon: Icons.star,
                                    icon1: Icons.star,
                                    icon2: Icons.star,
                                    icon3: Icons.star,
                                    text2:
                                        'Grow your creative\nbusiness with Insta! ',
                                    text3: 'Samantha Rossye',
                                    c2: const Color(0xff282F3E),
                                    c3: const Color(0xff585D69),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 60,
          //   // child: Padding(
          //   //   padding: EdgeInsets.symmetric(horizontal: 50),
          //   //   child: Row(
          //   //     children: [
          //   //       Icon(Icons.home_outlined,size: 25,color: Colors.grey,),
          //   //       SizedBox(width: 10,),
          //   //       Text('Home',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff404653)),),
          //   //       SizedBox(width: 20,),
          //   //       Icon(Icons.search,size: 25,color: Color(0xff70747E),),
          //   //       SizedBox(width: 20,),
          //   //       Icon(Icons.bookmark_border,size: 25,color: Color(0xff70747E),),
          //   //       SizedBox(width: 20,),
          //   //       Image(image: AssetImage('assets/image/person.png'),height: 35,width: 35,),
          //   //     ],
          //   //   ),
          //   // ),
          // ),

        ],
      ),
    );
  }
}
