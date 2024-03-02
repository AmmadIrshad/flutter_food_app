import 'package:flutter/material.dart';
import 'package:food_app/Basket_screen/add_to_basket.dart';

class HottestCard extends StatelessWidget {
  const HottestCard(
      {super.key, required this.imageAddress, required this.text});
  final String imageAddress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddToBasket()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 160,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xfffffcf2),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset("assets/images/Home_heart.png")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60, child: Image.asset(imageAddress))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(text),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset("assets/images/hottest_price.png"),
                ),
                Image.asset("assets/images/add.png")
              ],
            )
          ],
        ),
      ),
    );
  }
}
