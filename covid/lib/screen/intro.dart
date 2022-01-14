import 'package:covid/core/contst.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColors.mainColor,
          AppColors.mainColor.withOpacity(0.5)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        ),
        ),
        
      ),
    );
  }
}
