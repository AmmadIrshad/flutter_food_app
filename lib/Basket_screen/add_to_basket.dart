import 'package:flutter/material.dart';
import 'package:food_app/Basket_screen/combo_button.dart';
import 'package:food_app/order_compelete/order_complete.dart';

import 'package:food_app/widgets/back_button.dart';
import 'package:food_app/widgets/basket_button.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFA451),
      body: Column(
        children: [
          Container(
            color: const Color(0xffFFA451),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Row(
                  children: [CustomBackButton()],
                ),
                SizedBox(
                  child: Image.asset("assets/images/basket_1.png"),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Quinoa Fruit Salad",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      //color: Colors.black,
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset("assets/images/basket_minus.png"),
                          const Text(
                            "1",
                            style: TextStyle(fontSize: 20),
                          ),
                          Image.asset("assets/images/basket_plus.png")
                        ],
                      ),
                    ),
                    Image.asset("assets/images/basket_price.png")
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "This Combo Contains:",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    const Divider(
                      height: 8,
                      color: Color(0xffFFA451),
                      indent: 0.0,
                      endIndent: 270,
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ComboButton(
                                text: "Red Quinoa",
                              ),
                              ComboButton(
                                text: "Lime",
                              ),
                              ComboButton(
                                text: "Honney",
                              ),
                              ComboButton(
                                text: "Blueberries",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.62,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ComboButton(
                                text: "Mango",
                              ),
                              ComboButton(
                                text: "Strawberries",
                              ),
                              ComboButton(
                                text: "FreshMint",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Divider(
                      color: Colors.grey[300],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "If you are looking for a new food salad to eat today,",
                              style: TextStyle(
                                color: Color(0xff9390A6),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              "Quinoa is the perfect brunch for you.",
                              style: TextStyle(
                                color: Color(0xff9390A6),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/basket_heart.png"),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OrderComplete(),
                              ),
                            );
                          },
                          child: const BasketButton(
                            text: "Add To Basket",
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
