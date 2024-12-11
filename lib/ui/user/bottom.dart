import 'package:flutter/material.dart';
import 'package:humble/ui/user/Attendence.dart';
import 'package:humble/ui/user/Leaves.dart';
import 'package:humble/ui/user/Profile.dart';
import 'package:humble/ui/user/homepage.dart';

class Leader extends StatefulWidget {
  const Leader({super.key});

  @override
  State<Leader> createState() => _LeaderState();
}

class _LeaderState extends State<Leader> {
  int _selectedIndex = 0;

  List<Widget> get _pages => [
        HomeScreen(),
        Attendence(),
        Leaves(),
        Profile(),
      ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: const Color.fromARGB(255, 0, 0, 0)   ,      child: BottomNavigationBar(
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_today),
                      label: 'Attendance',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.delete),
                      label: 'Leaves',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.event_note),
                      label: 'Profile',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  backgroundColor: const Color.fromARGB(255, 201, 186, 186),
                  selectedItemColor:Colors.blue,
                  unselectedItemColor: const Color.fromARGB(170, 15, 15, 15),
                  onTap: _onItemTapped,
                ),
              ),
            ],
          ),
    );
  }
}