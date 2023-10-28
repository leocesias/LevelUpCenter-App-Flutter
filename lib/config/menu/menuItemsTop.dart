// ignore_for_file: file_names
import 'package:flutter/material.dart' show IconData, Icons;

class MenuItems {
  final String title;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Riverpod Theme Change',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
