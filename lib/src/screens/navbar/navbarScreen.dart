// ignore_for_file: file_names
import 'package:flutter/material.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LookurClimb'),
      ),
      body: const Center(
        child: Text(
          'Navbar Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}