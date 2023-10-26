// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MenuItems {
  final String name;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.name,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    name: 'Home',
    link: '/',
    icon: Icons.home_outlined
  ),
  MenuItems(
    name: 'Activities',
    link: '/activities',
    icon: Icons.dashboard_outlined
  ),
  MenuItems(
    name: 'Coaches',
    link: '/coaches',
    icon: Icons.people_alt_outlined
  ),
  MenuItems(
    name: 'Profile',
    link: '/profile',
    icon: Icons.person_outline
  ),
  MenuItems(
    name: 'Videogames',
    link: '/videogames',
    icon: Icons.videogame_asset_outlined
  ),
];
