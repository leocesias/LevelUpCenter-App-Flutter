// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lookurclimb/config/router/appRouter.dart';
import 'package:lookurclimb/src/screens/navbar/bottomNavigation.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({Key? key}) : super(key: key);

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int index = 0;
  BottomNavigation? bottomNavigation;

  @override
  void initState() {
    bottomNavigation = BottomNavigation(currentIndex: (int i) {
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
