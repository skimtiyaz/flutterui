import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/phone_verification/phone_varification_layout1.dart';
import 'package:flutterui/ui/pages/phone_verification/phone_varification_layout2.dart';
import 'package:flutterui/ui/pages/phone_verification/phone_varification_layout3.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class PhoneVarificationMain extends StatefulWidget {
  PhoneVarificationMain({Key key}) : super(key: key);

  @override
  _PhoneVarificationMainState createState() => _PhoneVarificationMainState();
}

class _PhoneVarificationMainState extends State<PhoneVarificationMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: PhoneVarificationLayout1(),
            name: 'Layout 1',
          ),
          Divider(),
          ListViewTile(
            page: PhoneVarificationLayout2(),
            name: 'Layout 2',
          ),
          Divider(),
          ListViewTile(
            page: PhoneVarificationLayout3(),
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
        MyString.phone_varification,
      ),
    );
  }
}
