import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard(
      {super.key, required this.imageAddress, required this.text});
  final String imageAddress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xfff5f5f5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
          BoxShadow(
            color: Color(0xfff5f5f5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(3, 0),
          ),
          BoxShadow(
            color: Color(0xfff5f5f5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, -3),
          ),
          BoxShadow(
            color: Color(0xfff5f5f5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(-3, 0),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 180,
      width: MediaQuery.of(context).size.width * 0.43,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset("assets/images/Home_heart.png")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(imageAddress)],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset("assets/images/reco_price.png"),
              ),
              Image.asset("assets/images/add.png"),
            ],
          )
        ],
      ),
    );
  }
}
