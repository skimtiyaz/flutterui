import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/animation/animation_page1.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class AnimationMain extends StatefulWidget {
  AnimationMain({Key key}) : super(key: key);

  @override
  _AnimationMainState createState() => _AnimationMainState();
}

class _AnimationMainState extends State<AnimationMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: AnimationPage1(),
            name: 'Layout 1',
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      title: Text(
        MyString.animation,
      ),
    );
  }
}
