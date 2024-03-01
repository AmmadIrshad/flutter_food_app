import 'package:flutter/material.dart';

class ScrollButton extends StatelessWidget {
  const ScrollButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            //padding: const EdgeInsets.symmetric(horizontal: 20)
          ),
          child: Text(text)),
    );
  }
}
