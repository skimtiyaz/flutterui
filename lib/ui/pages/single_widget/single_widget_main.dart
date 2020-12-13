import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/single_widget/buttons.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class SingleWidgetMain extends StatefulWidget {
  SingleWidgetMain({Key key}) : super(key: key);

  @override
  _SingleWidgetMainState createState() => _SingleWidgetMainState();
}

class _SingleWidgetMainState extends State<SingleWidgetMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: Buttons(),
            name: 'Button',
          ),
          Divider(),
          ListViewTile(
            page: Buttons(),
            name: 'Layout 2',
          ),
          Divider(),
          ListViewTile(
            page: Buttons(),
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
        MyString.single_widget,
      ),
    );
  }
}
