import 'package:flutter/material.dart';
//import introduction screen
import 'package:introduction_screen/introduction_screen.dart';
import '../homePage.dart';

//now, edit the content to what you want

class OnBoardingOne extends StatefulWidget {
  @override
  _OnBoardingOneState createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  final introKey = GlobalKey<IntroductionScreenState>();

  //this function is to call home page when introduction screen done
  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

//this function is to render images from assets folder
  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    //this is page decoration of background
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "OnBoarding Screen Demo",
          body:
              "This is an onBoarding Screen demo using Flutter package from pub.dev",
          image: _buildImage('v1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Why OnBoarding Screen?",
          body:
              "OnBoarding Screen can help to improve user experience, introduce to users about the app and how to use",
          image: _buildImage('v2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Simple Flutter Package",
          body:
              "This OnBoarding Screen demostrate a simple yet beautiful introduction screen to users",
          image: _buildImage('v3'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Screen Images",
          body:
              "All the Images used in this OnBoarding Screen demo are taken from storyset [https://storyset.com/]",
          image: _buildImage('v4'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Follow & Subscribe",
          body:
              "Follow my channel for more flutter demo, or you may comment to let how which package you want to know",
          image: _buildImage('v5'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context), //call when introduction done
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true, //show skip button, skip to last page
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      //this is dot decoration
      dotsDecorator: DotsDecorator(
        //delete const if want to change active color
        activeColor: Color(0xFFBA68C8),
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
