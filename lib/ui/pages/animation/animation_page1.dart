import 'package:flutterui/ui/Widget/pagetransition_animation.dart';
import 'package:flutterui/ui/pages/animation/animation_page2.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AnimationPage1 extends StatefulWidget {
  AnimationPage1({Key key}) : super(key: key);

  @override
  _AnimationPage1State createState() => _AnimationPage1State();
}

class _AnimationPage1State extends State<AnimationPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          _sharedAxisPageRouteHorizontal(),
          SizedBox(
            height: 10.0,
          ),
          _sharedAxisPageRouteVertical(),
          SizedBox(
            height: 10.0,
          ),
          _sharedAxisPageRouteScaled(),
          SizedBox(
            height: 10.0,
          ),
          _fadethroughRoute(),
          SizedBox(
            height: 10.0,
          ),
          _fadeScaleRoute(),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      elevation: 0.0,
      title: Text(
        MyString.page1,
      ),
    );
  }

  Widget _sharedAxisPageRouteHorizontal() {
    return Column(
      children: [
        Text(
          'SharedAxisPageRoute',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          'SharedAxisTransitionType.horizontal',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              SharedAxisPageRoute(
                page: AnimationPage2(
                  name: MyString.appName,
                ),
                transitionType: SharedAxisTransitionType.horizontal,
              ),
            );
          },
          child: Text(MyString.page2),
        ),
      ],
    );
  }

  Widget _sharedAxisPageRouteVertical() {
    return Column(
      children: [
        Text(
          'SharedAxisPageRoute',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          'SharedAxisTransitionType.vertical',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              SharedAxisPageRoute(
                page: AnimationPage2(),
                transitionType: SharedAxisTransitionType.vertical,
              ),
            );
          },
          child: Text(MyString.page2),
        ),
      ],
    );
  }

  Widget _sharedAxisPageRouteScaled() {
    return Column(
      children: [
        Text(
          'SharedAxisPageRoute',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          'SharedAxisTransitionType.scaled',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              SharedAxisPageRoute(
                page: AnimationPage2(),
                transitionType: SharedAxisTransitionType.scaled,
              ),
            );
          },
          child: Text(MyString.page2),
        ),
      ],
    );
  }

  Widget _fadethroughRoute() {
    return Column(
      children: [
        Text(
          'FadethroughRoute',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              FadethroughRoute(
                page: AnimationPage2(),
              ),
            );
          },
          child: Text(MyString.page2),
        ),
      ],
    );
  }

  Widget _fadeScaleRoute() {
    return Column(
      children: [
        Text(
          'FadeScaleRoute',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              FadeScaleRoute(
                page: AnimationPage2(),
              ),
            );
          },
          child: Text(MyString.page2),
        ),
      ],
    );
  }
}
