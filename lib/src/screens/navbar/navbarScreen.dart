// ignore_for_file: file_names

import 'package:GameMentor/config/menu/menuItems.dart';
import 'package:GameMentor/config/router/appRouter.dart';
import 'package:flutter/material.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({Key? key}) : super(key: key);

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int index = 0;
  late MenuItems bottomNavigation;  // Cambiado a late

  @override
  void initState() {
    bottomNavigation = MenuItems(currentIndex: (int i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation,
      body: AppRouter(index: index),
    );
  }
}
