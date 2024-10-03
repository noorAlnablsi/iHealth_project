import 'package:flutter/material.dart';

import 'package:ihealth_app/pages/splash_and_pageview/on_boarding_screen_1.dart';
import 'package:ihealth_app/pages/splash_and_pageview/on_boarding_screen_2.dart';
import 'package:ihealth_app/pages/splash_and_pageview/on_boarding_screen_3.dart';

class Core extends StatelessWidget {
  Core({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          OnBoardingScreen1(pageController: pageController),
          OnBoardingScreen2(pageController: pageController),
          OnBoardingScreen3(),
        ],
      ),
    );
  }
}