import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/onboarding/onboarding_layout1.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class OnBoardingMain extends StatefulWidget {
  OnBoardingMain({Key key}) : super(key: key);

  @override
  _OnBoardingMainMainState createState() => _OnBoardingMainMainState();
}

class _OnBoardingMainMainState extends State<OnBoardingMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: OnBoardingLayout1(),
            name: 'Layout 1',
          ),
          Divider(),
          ListViewTile(
            page: OnBoardingLayout1(),
            name: 'Layout 2',
          ),
          Divider(),
          ListViewTile(
            page: OnBoardingLayout1(),
            name: 'Layout 3',
          ),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      title: Text(
        MyString.food,
      ),
    );
  }
}
