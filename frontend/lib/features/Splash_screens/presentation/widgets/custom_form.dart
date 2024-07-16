import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  CustomForm({super.key, required this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 249, 247, 247),
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 0.2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        ),
      ),
    );
  }
}
