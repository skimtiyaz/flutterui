import 'package:flutterui/ui/Widget/listview_tile.dart';
import 'package:flutterui/ui/pages/tour_travels/tour_travels_layout1.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class TourTravelsMain extends StatefulWidget {
  TourTravelsMain({Key key}) : super(key: key);

  @override
  _TourTravelsMainMainState createState() => _TourTravelsMainMainState();
}

class _TourTravelsMainMainState extends State<TourTravelsMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          ListViewTile(
            page: TourTravelsLayout1(),
            name: 'Layout 1',
          ),
         /*  Divider(),
          ListViewTile(
            page: TourTravelsLayout1(),
            name: 'Layout 2',
          ),
          Divider(),
          ListViewTile(
            page: TourTravelsLayout1(),
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
        MyString.tour_and_travels,
      ),
    );
  }
}
