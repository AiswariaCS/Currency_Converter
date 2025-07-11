

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.pushReplacementNamed(context,'/home');
    }
    );

    return Scaffold(
      backgroundColor: Colors.teal,
      body:Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Colors.teal,

          ),
          Lottie.asset('assets/animations/converter_animation.json',
            width: 400,
            height:400,
          ),
          SizedBox(height: 20),
          Positioned(
            width: 300,
            height: 400,
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText("Welcome To Currency Converter",
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  speed: Duration(milliseconds: 100),
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
