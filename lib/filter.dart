import 'package:flutter/material.dart';
import 'package:e_learning/Components/Button2.dart';
import 'package:e_learning/Components/searchfilter.dart';
import 'package:e_learning/searchresult.dart';
import 'package:e_learning/teacher.dart';

class Filters extends StatefulWidget {
  const Filters({Key?key}):super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: InkWell(child: const Icon(Icons.arrow_back_ios,color: Color(0xff292D32),),onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=>const SearchResult()));
            },),
          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text('Sort by',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff282F3E)),),
          ),
          const SizedBox(height: 20,),
          const SearchFilter(text: 'Free classes'),
          const SizedBox(height: 10,),
          const SearchFilter(text: 'Premium classes'),
          const SizedBox(height: 10,),
          const SearchFilter(text: 'All'),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text('Level',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff282F3E)),),
          ),
          const SizedBox(height: 20,),
          const SearchFilter(text: 'Beginner'),
          const SizedBox(height: 10,),
          const SearchFilter(text: 'Intermediate'),
          const SizedBox(height: 10,),
          const SearchFilter(text: 'Advance'),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text('Duration',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff282F3E)),),
          ),
          const SizedBox(height: 20,),
          const SearchFilter(text: '0-1 Hour'),
          const SizedBox(height: 10,),
          const SearchFilter(text: '1-3 Hour'),
          const SizedBox(height: 10,),
          const SearchFilter(text: '3+ Hour'),
          const SizedBox(height: 50,),
          Row(
            children: [
              Button2(name: 'Reset', backcolor: Colors.white, color: Colors.red,h: 40,h1: 80,r: 10,w: 80,),
              Button2(name: 'Apply', backcolor: Colors.blueAccent, color: Colors.white,h: 40,h1: 20,r: 10,w: 80,onpress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Teacher()));
              },),
            ],
          ),
        ],
      ),
    );
  }
}
