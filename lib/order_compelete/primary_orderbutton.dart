import 'package:flutter/material.dart';

class PrimaryOderButton extends StatelessWidget {
  const PrimaryOderButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xffFCF6F0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xffF2943F), fontSize: 15),
      ),
    );
  }
}
