import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Quick Delivery",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C2F4F)),
            ),
            Text(
              "Orders your favorite meals will\nbe immediately deliver",
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
            Lottie.network(
                "https://lottie.host/d250534f-3e13-4cbf-b974-97727cd938a1/EhGpTgg7xk.json"),
          ],
        ),
      ),
    );
  }
}
