import 'dart:async';

import 'package:flutterui/ui/values/routes.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: MyString.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: routes,
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    Navigator.of(context).pushReplacementNamed('/HomeActivity');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Center(
          child: new Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ),
    );
  }
}
