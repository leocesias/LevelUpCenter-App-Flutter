import 'package:GameMentor/config/theme/appTheme.dart';
import 'package:GameMentor/src/screens/navbar/navbarBottomScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const NavbarBottomScreen(),
    );
  }
}