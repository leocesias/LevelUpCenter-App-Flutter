// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {

  static const String name = 'activities_screen';

  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Activities Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}