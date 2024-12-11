import 'package:flutter/material.dart';
import 'package:humble/ui/admin/employeedetails.dart';
import 'package:humble/ui/admin/useraccept.dart';
import 'package:humble/ui/user/Attendence.dart';
import 'package:humble/ui/user/Profile.dart';

class botto extends StatefulWidget {
  const botto({super.key});

  @override
  State<botto> createState() => _bottoState();
}

class _bottoState extends State<botto> {
  int _selectedIndex = 0;

  List<Widget> get _pages => [
        DashboardScreen(),
        Attendence(),
        EmployeeListScreen(),
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
                      icon: Icon(Icons.person_3_outlined),
                      label: 'User',
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