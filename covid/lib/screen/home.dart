import 'package:covid/core/contst.dart';
import 'package:covid/core/flutter_icon.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  children: [Icon(FlutterIcons.menu)],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
