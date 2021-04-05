import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Berlin, Germany', style: textStyle(18, FontWeight.w600, Colors.white)),
              Icon(Icons.arrow_drop_down_sharp)
            ],
          ),
          leading: IconButton(
            icon: Image.asset('assets/menu.png', width: 25),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Image.asset('assets/bell.png', width: 25),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/covid-bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 60),
                            child: Column(
                              children: [
                                Text('6783',
                                    style: textStyle(
                                        55, FontWeight.w800, Colors.white)),
                                         Text('Total Cases',
                                    style: textStyle(
                                        16, FontWeight.w600, Colors.white)),
                              ],
                            ),
                          )
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    height: MediaQuery.of(context).size.height - 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Column(children: [
                      mainCard(context),
                      SizedBox(height: 40),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            regularCard('assets/map.svg', 'Map'),
                            regularCard(
                                'assets/virus.svg', 'Risk of\n infection'),
                            regularCard('assets/upload.svg', 'Upload Data'),
                          ]),
                      SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            regularCard('assets/trend.svg', 'Statistics'),
                            regularCard('assets/facemask.svg', 'Protection'),
                            regularCard('assets/phone.svg', 'Contacts'),
                          ])
                    ]),
                  ),
                ],
              )),
        ]));
  }

  SizedBox regularCard(String iconName, String cardLabel) {
    return SizedBox(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300], offset: Offset.zero, blurRadius: 20)
            ],
          ),
          child: SvgPicture.asset(iconName, width: 50),
        ),
        SizedBox(height: 5),
        Text(cardLabel,
            textAlign: TextAlign.center,
            style: textStyle(16, FontWeight.w600, Colors.black))
      ]),
    );
  }

  Container mainCard(context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300], offset: Offset.zero, blurRadius: 20)
          ],
        ),
        child: Row(children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: (MediaQuery.of(context).size.width - 80) / 2,
            height: 140,
            child: Image.asset(
              "assets/doctor.png",
            ),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 80) / 2,
            height: 150,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Symptoms \nChecker',
                  style: textStyle(24, FontWeight.w800, Colors.black)),
              SizedBox(height: 16),
              Text('Based on common \symptoms',
                  style: textStyle(16, FontWeight.w800, Colors.grey[600]))
            ]),
          ),
        ]));
  }

  TextStyle textStyle(double size, FontWeight fontWeight, Color colorName) =>
      TextStyle(
        fontFamily: 'QuickSand',
        color: colorName,
        fontSize: size,
        fontWeight: fontWeight,
      );
}
