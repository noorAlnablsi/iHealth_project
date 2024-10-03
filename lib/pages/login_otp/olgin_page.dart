
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Gap(40),
            Image.asset("images/PLus.png"),
            Gap(20),
            Text("iHealth",style: TextStyle(
              fontSize: 30,fontWeight: FontWeight.w600
        
        
        
        
        
            ),)
          ],
        ),
      ) ,
    );
  }
}