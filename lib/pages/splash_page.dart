import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ihealth_app/pages/home_page.dart';
import 'package:ihealth_app/pages/on_boarding_screen_1.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
   void initState() {

    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const OnBoardingScreen1();
          },
        ),
      );
    });
  }
  

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Gap(300),
            Image.asset("images/PLus.png"),
            Gap(40),
            Text(
              "iHealth",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Gap(6),
            Text(
              "Health first",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 144, 143, 143)),
            )
          ],
        ),
      ),
    );
  }
}
