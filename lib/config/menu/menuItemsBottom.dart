// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MenuItemsBottom extends StatefulWidget {
  final Function currentIndex;
  const MenuItemsBottom({super.key, required this.currentIndex});

  @override
  State<MenuItemsBottom> createState() => _MenuItemsBottomState();
}

class _MenuItemsBottomState extends State<MenuItemsBottom> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
      ]),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.pink,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.people_alt_outlined,
                text: 'Coaches',
              ),
              GButton(
                icon: Icons.videogame_asset_outlined,
                text: 'Videogame',
              ),
              GButton(
                icon: Icons.dashboard_outlined,
                text: 'Activities',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              ),
            ],
            selectedIndex: index,
            onTabChange: (int i) {
              setState(() {
                index = i;
                widget.currentIndex(i);
              });
            },
          ),
        ),
      ),
    );
  }
}