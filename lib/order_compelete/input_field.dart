import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffEFEAEA),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey[400]),
          contentPadding: const EdgeInsets.only(left: 10.0),
        ),
      ),
    );
  }
}
