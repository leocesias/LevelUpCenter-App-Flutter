// ignore_for_file: file_names
import 'package:flutter/material.dart';

class VideogamesScreen extends StatelessWidget {
  const VideogamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LookurClimb'),
      ),
      body: const Center(
        child: Text(
          'Videogames Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}