import 'package:flutter/material.dart';
import 'package:food_app/home_screen/home_screen_1.dart';
import 'package:food_app/widgets/Bottom_Button.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    child: Image.asset("assets/images/auth-1.png"),
                  ),
                  Image.asset(
                    "assets/images/auth-2.png",
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/auth-3.png",
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
                      "What is your firstname?",
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
                    Container(
                      color: const Color(0xffF7F5F5),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none, // Remove border line
                          hintText: 'Chris',
                          hintStyle: TextStyle(
                              color: Colors.grey[
                                  400]), // Set lighter color for the placeholder text
                          contentPadding: const EdgeInsets.only(left: 12.0),
                        ),
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
                              builder: (context) => const HomeScreen1()),
                        );
                      },
                      child: const BottomButton(name: "Start Ordering"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
