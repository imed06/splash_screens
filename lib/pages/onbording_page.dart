import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screen1.dart';
import 'intro_screen2.dart';
import 'intro_screen3.dart';

class OnBordingPage extends StatefulWidget {
  void Function()? onTap;
  OnBordingPage({super.key,required this.onTap});

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (val) {
            setState(() {
              onLastPage = (val == 2);
            });
          },
          controller: _controller,
          children: [
            const IntroScreen1(),
            const IntroScreen2(),
            const IntroScreen3(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.85),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: const Text("Skip",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SmoothPageIndicator(controller: _controller, count: 3),
              onLastPage
                  ? GestureDetector(
                      onTap: widget.onTap,
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff1C2F4F),
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff1C2F4F),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
            ],
          ),
        )
      ],
    ));
  }
}
