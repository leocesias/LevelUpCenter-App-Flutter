import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final double padding;

  const TextInput(
      {super.key,
      required this.controller,
      required this.hintText,
      this.obscureText = false,
      this.padding = 25.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
