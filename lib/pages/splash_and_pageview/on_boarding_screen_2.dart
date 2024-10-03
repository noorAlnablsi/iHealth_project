import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ihealth_app/core/recource/color.dart';
import 'package:ihealth_app/core/widget/on_boarding_widget.dart';
import 'package:ihealth_app/pages/login_otp/olgin_page.dart';

class OnBoardingScreen2 extends StatelessWidget {
  OnBoardingScreen2({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OnBoardingWidget(
            image: "images/OIP.png",
            firstText: "Search with our database",
            secondText:
                "It's easy to find pharmacy that is near to your location. With just one tap.",
            containerColor1: lightGrey,
            containerColor2: green,
            containerColor3: lightGrey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    pageController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.linear,
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: white)
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    backgroundColor: green,
                  ),
                ),
                Gap(80),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=>LoginPage()));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: grey,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}