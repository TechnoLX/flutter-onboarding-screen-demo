import 'package:flutter/material.dart';

//import package named 'parallax swiper' from pub.DeviceOrientation
import 'package:parallax_swiper/parallax_swiper.dart';

import '../homePage.dart';

//same thing, copy the example
//change the images first
//seem like need to change alot of things
//this package is parallax swiper, i found it at pub.dev
//and make this become an introduction/onboarding screen
class OnBoardingThree extends StatefulWidget {
  const OnBoardingThree({Key key}) : super(key: key);

  @override
  _OnBoardingThreeState createState() => _OnBoardingThreeState();
}

class _OnBoardingThreeState extends State<OnBoardingThree> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    //remove the background image
    //change the screen size
    //this bg container is the background widget
    var bg = Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      //now add a button to redirect to home page
      //this flatbutton must put in this background widget, it will not working if put in foreground widget
      child: currentPage == 4
          ? Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFBA68C8),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  //make this button show up only at last page
                  child: FlatButton(
                    child: Text(
                      'Home',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => HomePage()),
                      );
                    },
                  ),
                ),
              ],
            )
          : null,
    );

//now, edit screen to become introduction screen
    var screen1 = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/v1.png',
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'OnBoarding Screen Demo',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 80,
            child: Text(
              'This is an onBoarding Screen demo using Flutter package from pub.dev',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                Text('Swipe'),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 32,
                ),
                Spacer(),
                Text('1/5'),
              ],
            ),
          ),
        ],
      ),
    );

    var screen2 = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/v2.png',
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Why OnBoarding Screen?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 80,
            child: Text(
              'OnBoarding Screen can help to improve user experience, introduce to users about the app and how to use',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 32,
                ),
                Spacer(),
                Text('Swipe'),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 32,
                ),
                Spacer(),
                Text('2/5'),
              ],
            ),
          ),
        ],
      ),
    );

    var screen3 = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/v3.png',
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Simple Flutter Package',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 80,
            child: Text(
              'This OnBoarding Screen demostrate a simple yet beautiful introduction screen to users',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 32,
                ),
                Spacer(),
                Text('Swipe'),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 32,
                ),
                Spacer(),
                Text('3/5'),
              ],
            ),
          ),
        ],
      ),
    );

    var screen4 = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/v4.png',
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Screen Images',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 80,
            child: Text(
              'All the Images used in this OnBoarding Screen demo are taken from storyset [https://storyset.com/]',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 32,
                ),
                Spacer(),
                Text('Swipe'),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 32,
                ),
                Spacer(),
                Text('4/5'),
              ],
            ),
          ),
        ],
      ),
    );

    var screen5 = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/v5.png',
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Follow & Subscribe',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 80,
            child: Text(
              'Follow my channel for more flutter demo, or you may comment to let how which package you want to know',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              //last screen should not have swipe arrow
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('5/5'),
              ],
            ),
          ),
        ],
      ),
    );

//create a list
    List<Widget> screens = [screen1, screen2, screen3, screen4, screen5];
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: ParallaxSwiper(
          backgroundWidget: bg,
          foregroundWidgets: screens,
          swipeDirection: Axis.horizontal,
          swiperCurve: Curves.bounceOut,
          returnCurve: Curves.bounceOut,
          swiperInfiniteSwipe: false, //prevent infinite swipe
          swiperInitialPage: 0,
          onItemChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
