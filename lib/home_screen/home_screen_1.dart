import 'package:flutter/material.dart';
import 'package:food_app/home_screen/home_header.dart';
import 'package:food_app/home_screen/search_input.dart';
import 'package:food_app/home_screen/widgets/hottest_card.dart';
import 'package:food_app/home_screen/widgets/recommended_card.dart';
import 'package:food_app/home_screen/widgets/scrollsble_button.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const HomeHeader(),
                const SizedBox(height: 30),
                const SearchField(),
                const SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    color: const Color(0xfff5f5f5),
                    child: const Row(
                      children: [
                        ScrollButton(text: "All"),
                        ScrollButton(text: "Salad Combo"),
                        ScrollButton(text: "Berry Combo"),
                        ScrollButton(text: "Mix Combo"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      width: double.infinity,
                      child: const Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recommended Combo",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 60,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color(0xFFFFA451),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RecommendedCard(
                          text: "Honey Lime Combo",
                          imageAddress: "assets/images/recomemded_combo_1.png",
                        ),
                        RecommendedCard(
                          text: "Berry Mango Combo",
                          imageAddress: "assets/images/recommended_combo_2.png",
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hottest",
                              style: TextStyle(fontSize: 16),
                            ),
                            Container(
                              width: 30,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(
                                        0xFFFFA451), // Use Color(0xFFFFA451) for #FFA451 color
                                    width: 2.0, // 2 pixels thickness
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Popular",
                          style: TextStyle(
                            color: Color(0xffa7b1c1),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "New Combo",
                          style:
                              TextStyle(color: Color(0xffa7b1c1), fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HottestCard(
                            imageAddress: "assets/images/hotteset_1.png",
                            text: "Quinou Fruit Salad",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HottestCard(
                            imageAddress: "assets/images/hottest_2.png",
                            text: "Tropical fruit salad",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          HottestCard(
                            imageAddress: "assets/images/hotteset_1.png",
                            text: "Quinou Fruit Salad",
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
