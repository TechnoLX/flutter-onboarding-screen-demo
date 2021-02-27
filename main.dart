import 'package:flutter/material.dart';
import 'package:testApp/onBoarding_four/onboarding_four.dart';
import 'package:testApp/onBoarding_two/onboarding_two.dart';
import 'package:testApp/onboarding_one/onBoarding_one.dart';
import 'package:testApp/onboarding_three/onBoarding_three.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingOne(),
    );
  }
}
