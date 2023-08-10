import 'package:flutter/material.dart';
import 'package:splash_screens/pages/onbording_page.dart';

class SplashScreen extends StatelessWidget {
  void Function()? onTap;
  SplashScreen({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBordingPage(
        onTap: onTap,
      ),
      theme: ThemeData(
          useMaterial3: true
      ),
    );
  }
}

Widget showSplashScreen(void Function()? onTap){
  return SplashScreen(
    onTap: onTap,
  );
}

