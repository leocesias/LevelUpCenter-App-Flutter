// ignore_for_file: file_names
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to LookurClimb!',
          style: TextStyle(fontSize: 24),
        ),
      )
    );
  }
}
