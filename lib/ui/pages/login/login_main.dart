import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/login/login_lauout3.dart';
import 'package:flutterui/ui/pages/login/login_layout1.dart';
import 'package:flutterui/ui/pages/login/login_layout2.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class LoginMain extends StatefulWidget {
  LoginMain({Key key}) : super(key: key);

  @override
  _LoginMainState createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: LoginLayout1(),
            name: 'Layout 1',
          ),
          Divider(),
          ListViewTile(
            page: LoginLayout2(),
            name: 'Layout 2',
          ),
          Divider(),
          ListViewTile(
            page: LoginLayout3(),
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
        MyString.login,
      ),
    );
  }
}
