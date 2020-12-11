import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class AnimationPage2 extends StatefulWidget {
  final String name;
  AnimationPage2({Key key, this.name}) : super(key: key);

  @override
  __AnimationPage2State createState() => __AnimationPage2State();
}

class __AnimationPage2State extends State<AnimationPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi',
              style: TextStyle(
                fontSize: 50.0,
              ),
            ),
            Text(
              widget.name == null ? 'Name is null' : widget.name,
              style: TextStyle(
                fontSize: 50.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      elevation: 0.0,
      title: Text(
        MyString.page2,
      ),
    );
  }
}
