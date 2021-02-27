import 'package:flutter/material.dart';
import 'package:testApp/onBoarding_four/onboarding_content.dart';

import '../homePage.dart';
//create a stateful widget

class OnBoardingFour extends StatefulWidget {
  OnBoardingFour({Key key}) : super(key: key);

  @override
  _OnBoardingFourState createState() => _OnBoardingFourState();
}

class _OnBoardingFourState extends State<OnBoardingFour> {
  //in this onboarding, using page view builder to render all screens

  int currentPage = 0;
  List<Map<String, dynamic>> contentData = [
    {
      "title": "OnBoarding Screen Demo",
      "text":
          "This is an onBoarding Screen demo without using packages from pub.dev",
      "image": "assets/v1.png",
    },
    {
      "title": "Why OnBoarding Screen?",
      "text":
          "OnBoarding Screen can help to improve user experience, introduce to users about the app and how to use",
      "image": "assets/v2.png",
    },
    {
      "title": "Simple Flutter Package",
      "text":
          "This OnBoarding Screen demostrate a simple yet beautiful introduction screen to users",
      "image": "assets/v3.png",
    },
    {
      "title": "Screen Images",
      "text":
          "All the Images used in this OnBoarding Screen demo are taken from storyset [https://storyset.com/]",
      "image": "assets/v4.png",
    },
    {
      "title": "Follow & Subscribe",
      "text":
          "Follow my channel for more flutter demo, or you may comment to let how which package you want to know",
      "image": "assets/v5.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(); //for screen control
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: contentData.length,
                //here we need a widget to render content
                itemBuilder: (context, index) => OnBoardingContent(
                    text: contentData[index]['text'],
                    image: contentData[index]['image'],
                    title: contentData[index]['title']),
              ),
            ), //for images display
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Row(
                        children: [
                          Spacer(
                            flex: 2,
                          ),
                          Row(
                            children: List.generate(contentData.length,
                                (index) => buildDot(index: index)),
                          ), //create dot progress
                          Spacer(),
                          Container(
                            child: currentPage == 4
                                ? FlatButton(
                                    child: Text('Done'),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) => HomePage()),
                                      );
                                    },
                                  )
                                : FlatButton(
                                    child: Text('Skip'),
                                    onPressed: () {
                                      setState(() {
                                        _controller.jumpToPage(4);
                                      });
                                    },
                                  ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )), //for progress dots and icon
          ],
        ),
      ),
    );
  }

  //this dot progress is referred/inspired from 'The Flutter Way' on YouTube
//please refer to his channel and video https://www.youtube.com/watch?v=YEJPg2jwzI8
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFFBA68C8) : Colors.grey[400],
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
