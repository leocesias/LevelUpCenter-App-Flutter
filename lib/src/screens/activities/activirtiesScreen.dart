// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LookurClimb'),
      ),
      body: const Center(
        child: Text(
          'Activities Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}