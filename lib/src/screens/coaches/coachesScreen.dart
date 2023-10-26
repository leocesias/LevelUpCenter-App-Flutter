// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CoachesScreen extends StatelessWidget {
  const CoachesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LookurClimb'),
      ),
      body: const Center(
        child: Text(
          'Coaches Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}