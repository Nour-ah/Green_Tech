import 'dart:async';

import 'package:flutter/material.dart';
import 'package:green_tech/screens/login.dart';

class GrennTechSplash extends StatefulWidget {
  const GrennTechSplash({super.key});

  @override
  State<GrennTechSplash> createState() => _GrennTechSplashState();
}

class _GrennTechSplashState extends State<GrennTechSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=>Navigator.of(context as BuildContext).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return  LogInPage();
                  },

                ))

    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/WhatsApp Image 2024-02-13 at 1.28.47 AM.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      

    );
  }
}