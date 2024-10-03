import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ihealth_app/core/recource/color.dart';
import 'package:ihealth_app/core/widget/on_boarding_widget.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            OnBoardingWidget(
                image: "images/OIP.png",
                firstText: "Get delivery on your door",
                secondText: "It's easy to find pharmacy that is near to your location. With just one tap.",
                containerColor1:lightGrey ,
                containerColor2:lightGrey,
                containerColor3: green),
        Padding(
             padding: const EdgeInsets.only(left: 25.0),
             child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                 
                  },
                    child: Text(
                      "Get Started",
                      style: TextStyle(color:white),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        backgroundColor: green),
                  ),
                  Gap(80),
                  TextButton(
                      onPressed: () {
                      
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color:grey),
                      ))
                ],
              ),
           )    ],
        ));
  }
}