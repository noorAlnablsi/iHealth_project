import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingWidget extends StatelessWidget {
  OnBoardingWidget({
    Key? key,
    required this.image,
    required this.firstText,
    required this.secondText,
    required this.containerColor1,
    required this.containerColor2,
    required this.containerColor3,
  }) : super(key: key);
  final String image;
  final String firstText;
  final String secondText;
  final Color containerColor1;
   final Color containerColor2;
    final Color containerColor3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Gap(40),
            Image.asset(image),
            Gap(25),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                firstText,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 25, right: 50),
              child: Text(
                secondText,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 144, 143, 143)),
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 210),
              child: Container(
                height: 5,
                width: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: containerColor1,
                      ),
                    ),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: containerColor2,
                      ),
                    ),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: containerColor3,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(40),
           
          ],
        ),
      ),
    );
  }
}