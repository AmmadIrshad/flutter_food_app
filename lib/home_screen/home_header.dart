import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/images/homescreen_1.png'),
      title: const Text("Welcome, Chris."),
      trailing: Image.asset('assets/images/homescreen_2.png'),
    );
  }
}
