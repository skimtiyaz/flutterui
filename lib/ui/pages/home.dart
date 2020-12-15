import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/animation/animation_main.dart';
import 'package:flutterui/ui/pages/ecommerce/ecommerce_main.dart';
import 'package:flutterui/ui/pages/food/food_main.dart';
import 'package:flutterui/ui/pages/login/login_main.dart';
import 'package:flutterui/ui/pages/onboarding/onboarding_main.dart';
import 'package:flutterui/ui/pages/phone_verification/phone_varification_main.dart';
import 'package:flutterui/ui/pages/product_details/product_man.dart';
import 'package:flutterui/ui/pages/single_widget/single_widget_main.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: AnimationMain(),
            name: MyString.animation,
          ),
          Divider(),
          ListViewTile(
            page: LoginMain(),
            name: MyString.login,
          ),
          Divider(),
          ListViewTile(
            page: PhoneVarificationMain(),
            name: MyString.phone_varification,
          ),
          Divider(),
          ListViewTile(
            page: FoodMain(),
            name: MyString.food,
          ),
          Divider(),
          ListViewTile(
            page: EcommerceMain(),
            name: MyString.ecommerce,
          ),
          Divider(),
          ListViewTile(
            page: ProductDetailsMain(),
            name: MyString.product_details,
          ),
          Divider(),
          ListViewTile(
            page: SingleWidgetMain(),
            name: MyString.single_widget,
          ),
          Divider(),
          ListViewTile(
            page: OnBoardingMain(),
            name: MyString.onBoarding_design,
          ),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      title: Text('FLUTTER-UI'),
      centerTitle: true,
    );
  }
}
