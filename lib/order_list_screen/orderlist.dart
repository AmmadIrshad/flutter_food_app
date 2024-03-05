import 'package:flutter/material.dart';
import 'package:food_app/order_list_screen/list.dart';
import 'package:food_app/widgets/back_button.dart';
import 'package:food_app/widgets/basket_button.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color(0xffFFA451),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Row(
              children: [
                CustomBackButton(),
                SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "My Basket",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: const Color(0xffFFFFFF),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.65,
            child: ListView(
              children: const [
                OList(
                  title: "Quinoa Food Salad",
                  image: "assets/images/mybucket_1.png",
                ),
                SizedBox(
                  height: 10,
                ),
                OList(
                  title: "Melon Food Salad",
                  image: "assets/images/mybucket_2.png",
                ),
                SizedBox(
                  height: 10,
                ),
                OList(
                  title: "Tropical Food Salad",
                  image: "assets/images/mybucket_3.png",
                )
              ],
            ),
          ),
          Container(
            color: const Color(0xffFAFAFA),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.15,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Image.asset("assets/images/mybucket_totalprice.png"),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderList(),
                      ),
                    );
                  },
                  child: const BasketButton(
                    text: "Checkout",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
