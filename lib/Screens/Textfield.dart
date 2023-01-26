import 'package:flutter/material.dart';

class myTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsureText;
  const myTextfield(
      {super.key,
      required this.controller,
      required this.obsureText,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return //userName
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obsureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
