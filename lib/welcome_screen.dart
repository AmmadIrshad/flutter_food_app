import 'package:flutter/material.dart';
import 'package:food_app/authentication.dart';
import 'package:food_app/widgets/Bottom_Button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 30),
            color: const Color(0xffFFA451),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 180,
                    top: 100,
                  ),
                  //height: 5,
                  child: Image.asset("assets/images/ws-1.png"),
                ),
                Image.asset(
                  "assets/images/ws-2.png",
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/images/ws-3.png",
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xffFFFFFF),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              padding: const EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Get The Freshest Food Salad Combo",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "We deliver the best and freshest food salad.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "in town. Order for a combo today!!!",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AuthenticationScreen()),
                      );
                    },
                    child: const BottomButton(name: "Let's Continue"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
