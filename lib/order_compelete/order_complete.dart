import 'package:flutter/material.dart';
import 'package:food_app/home_screen/home_screen_1.dart';
import 'package:food_app/order_compelete/input_field.dart';
import 'package:food_app/order_compelete/primary_orderbutton.dart';
import 'package:food_app/widgets/basket_button.dart';

class OrderComplete extends StatefulWidget {
  const OrderComplete({super.key});

  @override
  State<OrderComplete> createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> {
  payWithCard() {
    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0xffFFFFFF),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            insetPadding: const EdgeInsets.symmetric(horizontal: 20),
            //titlePadding: const EdgeInsets.all(20),
            //actionsPadding: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            content: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your delivery address"),
                  SizedBox(
                    height: 10,
                  ),
                  InputField(text: "10th avenue lekki, lagos"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Number we can call"),
                  SizedBox(
                    height: 10,
                  ),
                  InputField(text: "09090909090"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Text("Date"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Text("CVV"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputField(text: "MM/YY"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: InputField(text: "MM/YY"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: deliveryDetails,
                        child: const BasketButton(text: "Complete order"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }

  deliveryDetails() {
    setState(
      () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: const Color(0xffFFFFFF),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              insetPadding: const EdgeInsets.symmetric(horizontal: 20),
              titlePadding: const EdgeInsets.all(20),
              actionsPadding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              content: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Your delivery address"),
                    const SizedBox(
                      height: 10,
                    ),
                    const InputField(text: "10th avenue lekki, lagos"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Number we can call"),
                    const SizedBox(
                      height: 10,
                    ),
                    const InputField(text: "09090909090"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: const PrimaryOderButton(
                              text: "Pay on delivery",
                            )),
                        InkWell(
                          onTap: () {
                            payWithCard();
                          },
                          child: const PrimaryOderButton(text: "Pay with Card"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/order_complete_1.png"),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Order Taken",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Your order have been taken and is"),
              const SizedBox(
                height: 3,
              ),
              const Text("being attended to"),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: deliveryDetails,
                  child: const BasketButton(text: "Track Order")),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen1(),
                    ),
                  );
                },
                child: const PrimaryOderButton(
                  text: "Continue Shopping",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
