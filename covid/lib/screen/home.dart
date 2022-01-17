import 'package:covid/core/contst.dart';
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
              ),
            ),
            padding: EdgeInsetsDirectional.only(top: 25, bottom: 30),
            child: Stack(
              children: <Widget>[
                Image.asset('assets/images/virus2.png'),
                buildHeader(),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Symptoms of ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(
                        text: 'COVID-19',
                        style: TextStyle(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16),
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      buildSymptomItem("assets/images/1.png", "Fever"),
                      buildSymptomItem("assets/images/2.png", "Dry Cough"),
                      buildSymptomItem("assets/images/3.png", "Headache"),
                      buildSymptomItem("assets/images/4.png", "Breathless")
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Text(
                    'Previntion',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16),
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      buildPrevention(
                          "assets/images/a10.png", "WASH", "hands often"),
                      buildPrevention(
                          "assets/images/a4.png", "COVER", "your cough"),
                      buildPrevention(
                          "assets/images/a6.png", "ALWAYS", "clean"),
                      buildPrevention("assets/images/a9.png", "USE", "mask"),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 1,
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/map.png"),
                        SizedBox(
                          width: 25,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "CASES\n",
                            style: TextStyle(
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: "Overview Worldwide\n",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: "21.118.594 confirmed",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: null,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildPrevention(String path, String text1, String text2) {
    return Column(
      children: <Widget>[
        Container(
          width: 170,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 1,
              ),
            ],
          ),
          padding: EdgeInsets.all(12),
          child: Row(
            children: <Widget>[
              Image.asset(path),
              SizedBox(width: 10),
              RichText(
                text: TextSpan(
                    text: '$text1\n',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: text2,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
              )
            ],
          ),
          margin: EdgeInsets.only(right: 20),
        ),
        SizedBox(height: 7),
      ],
    );
  }

  Widget buildSymptomItem(String path, String text) {
    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            gradient: LinearGradient(
              colors: [
                AppColors.backgroundColor,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ],
          ),
          padding: EdgeInsets.only(top: 15),
          child: Image.asset(path),
          margin: EdgeInsets.only(right: 20),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
