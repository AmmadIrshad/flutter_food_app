import 'package:flutter/material.dart';
import 'package:food_app/widgets/back_button.dart';

class DeliveryStatus extends StatelessWidget {
  const DeliveryStatus({super.key});

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
                    "Delivery Status",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: const Color(0xffFFFFFF),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView(padding: EdgeInsets.only(top: 10), children: [
              ListTile(
                //dense: true,
                leading: Image.asset("assets/images/delivery_leading_1.png"),
                title: Text("Order Taken"),
                trailing: Image.asset("assets/images/delivery_yes.png"),
              ),
              ListTile(
                leading: SizedBox(
                  width: 55,
                  child: Center(
                      child: Image.asset("assets/images/delivery_divider.png")),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/delivery_leading_2.png"),
                title: const Text("Order is being processed"),
                trailing: Image.asset("assets/images/delivery_yes.png"),
              ),
              ListTile(
                leading: SizedBox(
                  width: 55,
                  height: 70,
                  child: Center(
                      child: Image.asset("assets/images/delivery_divider.png")),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/delivery_leading_3.png"),
                title: const Text("Order is being delivered"),
                subtitle: const Text(
                  "Your meal is on it;s wat!!",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Image.asset("assets/images/delivery_trailing_3.png"),
              ),
              ListTile(
                leading: SizedBox(
                  width: 55,
                  child: Center(
                      child: Image.asset("assets/images/delivery_divider.png")),
                ),
              ),
              Image.asset("assets/images/delivery_map.png"),
              ListTile(
                leading: SizedBox(
                  width: 55,
                  child: Center(
                      child: Image.asset("assets/images/delivery_divider.png")),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/delivery_leading_4.png"),
                title: const Text("Order is being delivered"),
                subtitle: const Text(
                  "Your meal is on it;s wat!!",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Image.asset("assets/images/delivery_trailing_4.png"),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
