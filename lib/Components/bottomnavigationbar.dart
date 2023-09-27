import 'package:flutter/material.dart';
import 'package:e_learning/home_screen.dart';
import 'package:e_learning/search.dart';
import 'package:e_learning/searchresult.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentindex = 0;
  final screens = [
    const HomeScreen(),
    const Search(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screens[_currentindex],
      bottomNavigationBar: SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xff265AE8),
          currentIndex: _currentindex,
          onTap: (index){
            setState(() {
              _currentindex=index;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                )),
            SalomonBottomBarItem(
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                ),
                title: InkWell(
                  child: const Text('Search',
                      style: TextStyle(color: Colors.black, fontSize: 13)),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchResult()));
                  },
                )),
            SalomonBottomBarItem(
                icon: const Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
                title: const Text('Bookmark',
                    style: TextStyle(color: Colors.black, fontSize: 10.7))),
            SalomonBottomBarItem(
                icon: const SizedBox(
                  height: 30,
                    width: 30,
                    child: Image(
                        image: AssetImage(
                  'assets/image/person.png',
                ))),
                title: const Text('profile',
                    style: TextStyle(color: Colors.black, fontSize: 13))),
          ]),
    );
  }
}
