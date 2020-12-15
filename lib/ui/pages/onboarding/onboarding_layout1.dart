import 'package:flutter/material.dart';
import 'package:flutterui/ui/pages/onboarding/onboarding_Model.dart';
import 'package:flutterui/ui/pages/onboarding/onboarding_screen1.dart';
import 'package:flutterui/ui/values/colors.dart';

class OnBoardingLayout1 extends StatelessWidget {
  final pages = [
    OnboardingModel(
        title: 'Title',
        description: 'description',
        titleColor: Colors.black,
        descripColor: Colors.grey,
        imagePath: 'assets/images/1st_screen.png'),
    OnboardingModel(
        title: 'Title',
        description: 'description',
        titleColor: Colors.black,
        descripColor: Colors.grey,
        imagePath: 'assets/images/2nd_screen.png'),
    OnboardingModel(
      title: 'Title',
      description: 'description',
      titleColor: Colors.black,
      descripColor: Colors.grey,
      imagePath: 'assets/images/3rd_screen.png',
    ),
    OnboardingModel(
      title: 'Title',
      description: 'description',
      titleColor: Colors.black,
      descripColor: Colors.grey,
      imagePath: 'assets/images/4th_screen.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreen1(
        bgColor: Colors.white,
        themeColor: MyColors.primaryColor,
        pages: pages,
        skipClicked: () {
          //Navigator.of(context).pushReplacementNamed('/YourPage');
        },
        getStartedClicked: () {
          //Navigator.of(context).pushReplacementNamed('/YourPage');
        },
      ),
    );
  }
}
