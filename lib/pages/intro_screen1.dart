import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

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
              "Order your food",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C2F4F)),
            ),
            Text(
              "Now you can order food any time\nright from your mobile",
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
            Lottie.network(
                'https://lottie.host/2a418ea8-9981-407b-a180-776775126dae/9FDOWekWGF.json'),
          ],
        ),
      ),
    );
  }
}
