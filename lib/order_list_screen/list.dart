import 'package:flutter/material.dart';

class OList extends StatelessWidget {
  const OList({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffF1EFF6),
        ),
        height: 100,
        width: 50,
        padding: const EdgeInsets.all(2),
        child: Image.asset(
          image,
        ),
      ),
      title: Text(title),
      trailing: Image.asset("assets/images/mybucketMinus.png"),
      subtitle: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "2Packs",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Image.asset("assets/images/mybucket_price.png"),
        ],
      ),
    );
  }
}
