// ignore_for_file: file_names

import 'package:GameMentor/config/menu/menuItemsBottom.dart';
import 'package:GameMentor/config/router/appRouterBottom.dart';
import 'package:flutter/material.dart';

class NavbarBottomScreen extends StatefulWidget {
  const NavbarBottomScreen({Key? key}) : super(key: key);

  @override
  State<NavbarBottomScreen> createState() => _NavbarBottomScreenState();
}

class _NavbarBottomScreenState extends State<NavbarBottomScreen> {
  int index = 0;
  MenuItemsBottom? bottomNavigation;

  @override
  void initState() {
    bottomNavigation = MenuItemsBottom(currentIndex: (int i) {
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
      body: AppRouterBottom(index: index),
    );
  }
}