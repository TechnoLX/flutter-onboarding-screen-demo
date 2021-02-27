import 'package:flutter/material.dart';
//import package from fancy_on_boarding
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import '../homePage.dart';

//same thing, copy the example and edit later
class OnBoardingTwo extends StatefulWidget {
  OnBoardingTwo({Key key}) : super(key: key);

  @override
  _OnBoardingTwoState createState() => new _OnBoardingTwoState();
}

class _OnBoardingTwoState extends State<OnBoardingTwo> {
  //Create a list of PageModel to be set on the onBoarding Screens.
  //remember to change the images

  final pageList = [
    PageModel(
        color: const Color(0xFF678FB4),
        heroImagePath: 'assets/v1.png',
        title: Text('OnBoarding Screen Demo',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 24.0,
            )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
              'This is an onBoarding Screen demo using Flutter package from pub.dev',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )),
        ),
        iconImagePath: 'assets/v1.png'),
    PageModel(
        color: const Color(0xFF65B0B4),
        heroImagePath: 'assets/v2.png',
        title: Text('Why OnBoarding Screen?',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 24.0,
            )),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
              'OnBoarding Screen can help to improve user experience, introduce to users about the app and how to use',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              )),
        ),
        iconImagePath: 'assets/v2.png'),
    PageModel(
      color: const Color(0xFF9B90BC),
      heroImagePath: 'assets/v3.png',
      title: Text('Simple Flutter Package',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 24.0,
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
            'This OnBoarding Screen demostrate a simple yet beautiful introduction screen to users',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
      ),
      //this icon is show at the bottow, can be an icon or images
      icon: Icon(
        Icons.shopping_cart,
        color: const Color(0xFF9B90BC),
      ),
    ),
    PageModel(
      color: const Color(0xFF678FB4),
      heroImagePath: 'assets/v4.png',
      title: Text('Screen Images',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 24.0,
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
            'All the Images used in this OnBoarding Screen demo are taken from storyset [https://storyset.com/]',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
      ),
      iconImagePath: 'assets/v4.png',
    ),
    PageModel(
      color: const Color(0xFF65B0B4),
      heroImagePath: 'assets/v5.png',
      title: Text('Follow & Subscribe',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 24.0,
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
            'Follow my channel for more flutter demo, or you may comment to let how which package you want to know',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            )),
      ),
      iconImagePath: 'assets/v5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Pass pageList and the mainPage route.
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        //change the route page as well
        onDoneButtonPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomePage()),
        ),
        onSkipButtonPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => HomePage()),
        ),
      ),
    );
  }
}
