import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.name,
    super.key,
  });

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        color: const Color(0xffFFA451),
        borderRadius: BorderRadius.circular(10),
      ),
      //child: Text(""),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
