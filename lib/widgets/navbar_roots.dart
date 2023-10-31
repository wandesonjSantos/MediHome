import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medihome/screens/home_screen.dart';
import 'package:medihome/screens/messages_screen.dart';
import 'package:medihome/screens/schedule_screen.dart';
import 'package:medihome/screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    HomeScreen(),
    MessagesScreen(),
    ScheduleScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 237, 238),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 130, 221, 221),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: const Color.fromARGB(66, 17, 17, 17),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                ),
                label: "Mensagens"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "consultas"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Configurações"),
          ],
        ),
      ),
    );
  }
}
