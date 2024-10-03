import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ihealth_app/core/recource/color.dart';

import 'package:ihealth_app/pages/splash_and_pageview/pageview.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
   void initState() {

    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return  Core();
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
                  color: grey),
                
            )
          ],
        ),
      ),
    );
  }
}