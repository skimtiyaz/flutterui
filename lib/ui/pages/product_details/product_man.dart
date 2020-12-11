import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/product_details/product_details1.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class ProductDetailsMain extends StatefulWidget {
  ProductDetailsMain({Key key}) : super(key: key);

  @override
  _ProductDetailsMainState createState() => _ProductDetailsMainState();
}

class _ProductDetailsMainState extends State<ProductDetailsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: ProductDetails1(),
            name: 'Layout 1',
          ),
          Divider(),
          ListViewTile(
            page: ProductDetails1(),
            name: 'Layout 2',
          ),
          Divider(),
          ListViewTile(
            page: ProductDetails1(),
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
