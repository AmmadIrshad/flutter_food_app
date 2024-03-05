import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 85,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(top: 40, bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.arrow_back_ios_sharp,
              size: 20,
              color: Colors.black,
            ),
            Text(
              'Go Back',
              style: TextStyle(fontSize: 15, color: Color(0xff9390A6)),
            ),
          ],
        ),
      ),
    );
  }
}
