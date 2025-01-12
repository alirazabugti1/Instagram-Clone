import 'package:flutter/material.dart';
import 'package:instagram/Search.dart';
import 'package:instagram/HomePage.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/Add.dart';
import 'package:instagram/Reels.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> lists = [
    const Homepage(),
    const Search(),
    const Add(),
    const Reels(),
    const Profile()
  ];

  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Feed',
              backgroundColor: Color.fromARGB(255, 48, 70, 77),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
              backgroundColor: Color.fromARGB(255, 48, 70, 77),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
              backgroundColor: Color.fromARGB(255, 48, 70, 77),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation,
              ),
              label: 'Reels',
              backgroundColor: Color.fromARGB(255, 48, 70, 77),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 48, 70, 77),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 48, 70, 77),
        body: IndexedStack(
          index: myindex,
          children: lists,
        ));
  }
}
