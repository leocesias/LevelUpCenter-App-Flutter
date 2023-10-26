// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CoachesScreen extends StatelessWidget {

  static const String name = 'coaches_screen';

  const CoachesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Coaches Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}