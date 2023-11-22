import 'package:flutter/material.dart';
import 'package:game_mentor/screens/admin/configuration_screen.dart';
import 'package:game_mentor/screens/admin/games/create_screen.dart';
import 'package:game_mentor/screens/admin/games/list_screen.dart';
import 'package:game_mentor/screens/admin/games/user_list_screen.dart';

class AdminLayout extends StatefulWidget {
  const AdminLayout({super.key});

  @override
  State<AdminLayout> createState() => _AdminLayoutState();
}

class _AdminLayoutState extends State<AdminLayout> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    GameListScreen(),
    const GameCreateScreen(),
    const UserListScreen(),
    const ConfigurationScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Center'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: 'Create Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Users',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Configuration'),
        ],
      ),
    );
  }
}
