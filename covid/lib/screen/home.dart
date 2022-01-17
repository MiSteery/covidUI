import 'package:covid/core/contst.dart';
import 'package:covid/core/flutter_icon.dart';
import 'package:covid/widget/customeAppbar.dart';
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
              child: Stack(
                children: <Widget>[
                  buildHeader(),
                ],
              ))
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomAppBarWidget(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'COVID -19',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Coronavirus Relief fund',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'to this fund will help to stop the virus spread and give\n communities of the font lines.',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, height: 1.5),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  'DONATE NOW',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: RaisedButton(
                color: Colors.red,
                onPressed: () {},
                child: Text(
                  'EMERGENCY',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        )
      ],
    );
  }
}
