import 'package:GameMentor/config/theme/appTheme.dart';
import 'package:GameMentor/src/screens/navbar/navbarsCombinedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const NavbarCombinedScreen(),
    );
  }
}
