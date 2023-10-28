// ignore_for_file: file_names

import 'package:GameMentor/config/menu/menuItemsBottom.dart';
import 'package:GameMentor/config/router/appRouterBottom.dart';
import 'package:GameMentor/widgets/sideMenu.dart';
import 'package:flutter/material.dart';

class NavbarCombinedScreen extends StatefulWidget {
  const NavbarCombinedScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavbarCombinedScreenState createState() => _NavbarCombinedScreenState();
}

class _NavbarCombinedScreenState extends State<NavbarCombinedScreen> {
  int _currentIndex = 0;

  // Método para actualizar el índice
  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Game Mentor'),
        centerTitle: true,
      ),
      bottomNavigationBar: MenuItemsBottom(
        currentIndex: _updateIndex,
      ),
      body: AppRouterBottom(index: _currentIndex),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}
