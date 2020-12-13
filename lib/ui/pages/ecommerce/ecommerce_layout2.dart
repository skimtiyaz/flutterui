import 'package:flutter/material.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';

class EcommerceLayout2 extends StatefulWidget {
  EcommerceLayout2({Key key}) : super(key: key);

  @override
  EecommerceLayout2State createState() => EecommerceLayout2State();
}

class EecommerceLayout2State extends State<EcommerceLayout2> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> images = [
    'https://images.unsplash.com/photo-1541558869434-2840d308329a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGZ1cm5pdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598300042247-d088f8ab3a91?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8ZnVybml0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1538688525198-9b88f6f53126?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8ZnVybml0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1517705008128-361805f42e86?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZ1cm5pdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZnVybml0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1556022363-5187bfa13ad9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bGl2aW5nJTIwcm9vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1521607630287-ee2e81ad3ced?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGxpdmluZyUyMHJvb218ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1560993153-676ba4538402?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NzR8fGxpdmluZyUyMHJvb218ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1544207240-4193795530ee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fHRhYmxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1603025832572-c5ba1fb6be8b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fHRhYmxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: MyColors.ec_color2,
      appBar: _appBarWidget(),
      drawer: _drawerWidget(),
      body: ListView(
        children: [
          _searchWidget(),
          _categoriesColumnWiget(),
          _trendingColumnWiget(),
          _popularColumnWiget(),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: MyColors.ec_color2,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.sort,
          color: Colors.cyan[700],
        ),
        onPressed: () {
          _scaffoldKey.currentState..openDrawer();
        },
      ),
      actions: [
        InkWell(
          onTap: () {},
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_outline,
              color: Colors.cyan[700],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.local_mall_outlined,
              color: Colors.cyan[700],
            ),
          ),
        ),
      ],
    );
  }

  Widget _drawerWidget() {
    return Drawer();
  }

  Widget _searchWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                print('seach click');
              },
              child: Container(
                height: 40.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 18.0,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      MyString.search,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.cyan[700],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              Icons.filter_list,
              size: 24.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoriesColumnWiget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _categoriesTitleWidget(),
        _categoriesItemWidget(),
      ],
    );
  }

  Widget _categoriesTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      child: Text(
        MyString.categories,
        style: TextStyle(
          fontSize: 26.0,
        ),
      ),
    );
  }

  Widget _categoriesItemWidget() {
    return SizedBox(
      height: 60.0,
      child: ListView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool last = images.length == (index + 1);
          bool first = 0 == (index);
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: last
                  ? const EdgeInsets.only(
                      right: 20.0,
                      left: 5.0,
                    )
                  : first
                      ? const EdgeInsets.only(left: 20.0)
                      : const EdgeInsets.only(left: 5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Icon(Icons.storefront_outlined),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _trendingColumnWiget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _trendingTitleWidget(),
        _trendingItemWidget(),
      ],
    );
  }

  Widget _trendingTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      child: Text(
        MyString.trending,
        style: TextStyle(
          fontSize: 26.0,
        ),
      ),
    );
  }

  Widget _trendingItemWidget() {
    return SizedBox(
      height: 250.0,
      child: ListView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool last = images.length == (index + 1);
          bool first = 0 == (index);
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: last
                  ? const EdgeInsets.only(
                      right: 20.0,
                      left: 5.0,
                    )
                  : first
                      ? const EdgeInsets.only(left: 20.0)
                      : const EdgeInsets.only(left: 5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180.0,
                      width: 200.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Esse culpa ipsum',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '\u20b9 520',
                                    style: TextStyle(
                                      color: MyColors.ec_color1,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[700],
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _popularColumnWiget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _popularTitleWidget(),
        _popularItemWidget(),
      ],
    );
  }

  Widget _popularTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      child: Text(
        MyString.popular,
        style: TextStyle(
          fontSize: 26.0,
        ),
      ),
    );
  }

  Widget _popularItemWidget() {
    return SizedBox(
      height: 90.0,
      child: ListView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool last = images.length == (index + 1);
          bool first = 0 == (index);
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: last
                  ? const EdgeInsets.only(
                      right: 20.0,
                      left: 5.0,
                    )
                  : first
                      ? const EdgeInsets.only(left: 20.0)
                      : const EdgeInsets.only(left: 5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 180.0,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Esse culpa ipsum',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    '\u20b9 520',
                                    style: TextStyle(
                                      color: MyColors.ec_color1,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[700],
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
