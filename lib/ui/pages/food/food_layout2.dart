import 'package:flutter/material.dart';
import 'package:flutterui/ui/pages/food/food_pageview1.dart';

class FoodLayout2 extends StatefulWidget {
  FoodLayout2({Key key}) : super(key: key);

  @override
  _FoodLayout2State createState() => _FoodLayout2State();
}

class _FoodLayout2State extends State<FoodLayout2> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController _pageController;
  bool animatedText1 = true;
  bool animatedText2 = false;
  bool animatedText3 = false;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onAddButtonTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _drawerWidget(),
      floatingActionButton: _floatingActionButtonWidget(),
      body: Row(
        children: [
          _tabBarWidget(),
          _tabBarViewWidget(),
        ],
      ),
    );
  }

  Widget _drawerWidget() {
    return Drawer();
  }

  Widget _floatingActionButtonWidget() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.orange,
      child: Icon(Icons.shopping_cart_outlined),
    );
  }

  Widget _tabBarWidget() {
    return Container(
      width: 70.0,
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {
                  _scaffoldKey.currentState..openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  onAddButtonTapped(0);
                  setState(() {
                    animatedText1 = true;
                    animatedText2 = false;
                    animatedText3 = false;
                  });
                },
                child: RotatedBox(
                  quarterTurns: -1,
                  child: AnimatedDefaultTextStyle(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.elasticOut,
                    style: animatedText1
                        ? TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 10,
                          )
                        : TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                    child: Text('Pizza'),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: () {
                  onAddButtonTapped(1);
                  setState(() {
                    animatedText1 = false;
                    animatedText2 = true;
                    animatedText3 = false;
                  });
                },
                child: RotatedBox(
                  quarterTurns: -1,
                  child: AnimatedDefaultTextStyle(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.elasticOut,
                    style: animatedText2
                        ? TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 10,
                          )
                        : TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                    child: Text('Burgar'),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: () {
                  onAddButtonTapped(2);
                  setState(() {
                    animatedText1 = false;
                    animatedText2 = false;
                    animatedText3 = true;
                  });
                },
                child: RotatedBox(
                  quarterTurns: -1,
                  child: AnimatedDefaultTextStyle(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.elasticOut,
                    style: animatedText3
                        ? TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 10,
                          )
                        : TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                    child: Text('Drink'),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tabBarViewWidget() {
    return Expanded(
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        children: [
          FoodPageview1(),
          FoodPageview1(),
          FoodPageview1(),
        ],
      ),
    );
  }
}
