// ignore_for_file: file_names
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LookurClimb'),
      ),
      body: const Center(
        child: Text(
          'Welcome to LookurClimb!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}