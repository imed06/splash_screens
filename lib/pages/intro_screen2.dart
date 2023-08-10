import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

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
              "Cooking safe food",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C2F4F)),
            ),
            Text(
              "We are maintain safty and We keep\nclean while making food",
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
            ),
            Lottie.network(
                "https://lottie.host/76870ab2-97de-432f-ae07-1d10735c9bdd/dyiaPSkFVD.json"),
          ],
        ),
      ),
    );
  }
}
