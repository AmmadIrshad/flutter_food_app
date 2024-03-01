import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xfff5f5f5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: 'search for food and salad combos',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Icon(Icons.search)),
                  border: InputBorder.none),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: const Color(0xfff5f5f5),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 50,
          child: Image.asset(
            'assets/images/homescreen_3.png',
          ),
        ),
      ],
    );
  }
}
