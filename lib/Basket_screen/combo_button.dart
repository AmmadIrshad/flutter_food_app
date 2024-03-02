import 'package:flutter/material.dart';

class ComboButton extends StatelessWidget {
  const ComboButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 11, color: Color(0xff403E3E)),
        ),
      ),
    );
  }
}
