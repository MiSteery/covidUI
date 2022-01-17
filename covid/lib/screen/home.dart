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
            children:<Widget> [
              buildAppBar(),
            
            ],
          ),
        )
      ],
    ));
  }
  Widget buildAppBar(){
    return   Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget> [
                    IconButton(                     
                      icon: Icon(
                        FlutterIcons.menu,
                        color: Colors.white,
                      ),
                       onPressed: () {},
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        image: DecorationImage(image: AssetImage('assets/images/profile.jpg'),)
                      ),
                    )
                  ],
                ),
              );
  }
}
