import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/food/food_layout1.dart';
import 'package:flutterui/ui/pages/food/food_layout2.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class FoodMain extends StatefulWidget {
  FoodMain({Key key}) : super(key: key);

  @override
  _FoodMainState createState() => _FoodMainState();
}

class _FoodMainState extends State<FoodMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: FoodLayout1(),
            name: 'Layout 1',
          ),
          Divider(),
          ListViewTile(
            page: FoodLayout2(),
            name: 'Layout 2',
          ),
          /* Divider(),
          ListViewTile(
            page: FoodLayout1(),
            name: 'Layout 3',
          ), */
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
