import 'package:emergency/Pages/community.dart';
import 'package:emergency/Pages/emergencies.dart';
import 'package:emergency/Pages/learn.dart';
import 'package:emergency/Pages/post_emergency.dart';
import 'package:emergency/Pages/profile.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Emergencies(),
    PostEmergency(),
    Learn(),
    Community(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.cell_tower),
              label: 'Emergencies'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_rounded),
            label: 'Post',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_sharp),
              label: 'Learn'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Community'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile'
          ),
        ],
        unselectedItemColor: Color(0xFF333333),
        selectedItemColor: Colors.red,
      ),
    );
  }
}
