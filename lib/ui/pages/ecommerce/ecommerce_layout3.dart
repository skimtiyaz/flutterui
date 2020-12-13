import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/ui/pages/ecommerce/ecommerce_tabview1.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EcommerceLayout3 extends StatefulWidget {
  EcommerceLayout3({Key key}) : super(key: key);

  @override
  _EcommerceLayout3State createState() => _EcommerceLayout3State();
}

class _EcommerceLayout3State extends State<EcommerceLayout3>
    with SingleTickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int _current = 0;
  TabController _tabController;
  ScrollController _scrollController;

  final List<String> sliderImages = [
    'https://images.unsplash.com/photo-1605557626697-2e87166d88f9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDh8fGZhc2hpb24lMjBtb2RlbHxlbnwwfDB8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1605919993579-457ae8e08a20?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fGZhc2hpb24lMjBtb2RlbHxlbnwwfDB8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1500917129638-ca7e13bc30f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjJ8fGZhc2hpb24lMjBtb2RlbHxlbnwwfDB8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  void initState() {
    _tabController = new TabController(length: 7, vsync: this);
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      drawer: _drawerWidget(),
      body: _tabbarWidget(),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.sort,
          color: Colors.black,
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
              Icons.search,
              color: Colors.black,
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
              Icons.favorite_outline,
              color: Colors.black,
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
              Icons.shopping_basket_outlined,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _drawerWidget() {
    return Drawer();
  }

  Widget _tabbarWidget() {
    return DefaultTabController(
      length: 7,
      initialIndex: 0,
      child: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 200.0,
              floating: false,
              automaticallyImplyLeading: false,
              forceElevated: innerBoxIsScrolled,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                background: _sliderWidget(),
              ),
            ),
          ];
        },
        body: Column(
          children: <Widget>[
            _tabbarListWidget(),
            _tabbarViewWidget(),
          ],
        ),
      ),
    );
  }

  Widget _sliderWidget() {
    return Container(
      height: 200.0,
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: sliderImages.length,
            options: CarouselOptions(
              height: 250.0,
              initialPage: 0,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              scrollDirection: Axis.horizontal,
              viewportFraction: 1,
              onPageChanged: (index, CarouselPageChangedReason changeReason) {
                setState(
                  () {
                    _current = index;
                  },
                );
              },
            ),
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.grey[300],
                child: Image.network(
                  sliderImages[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 15.0,
                bottom: 10.0,
              ),
              child: AnimatedSmoothIndicator(
                activeIndex: _current,
                count: sliderImages.length,
                effect: ExpandingDotsEffect(
                  expansionFactor: 3,
                  dotHeight: 5.0,
                  dotWidth: 8.0,
                  activeDotColor: Colors.white,
                  dotColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabbarListWidget() {
    return Container(
      width: double.infinity,
      child: TabBar(
        controller: _tabController,
        indicatorColor: Colors.black,
        isScrollable: true,
        labelStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        labelColor: Colors.black,
        unselectedLabelStyle:
            TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        unselectedLabelColor: Colors.black,
        labelPadding: EdgeInsets.only(left: 10.0, right: 10.0),
        tabs: [
          Tab(
            text: "Ethnic fashion style",
          ),
          Tab(
            text: "Formal Office Wear",
          ),
          Tab(
            text: "Men",
          ),
          Tab(
            text: "Women",
          ),
          Tab(
            text: "Evening Black Tie",
          ),
          Tab(
            text: "Sports Wear",
          ),
          Tab(
            text: 'Girly Style',
          )
        ],
      ),
    );
  }

  Widget _tabbarViewWidget() {
    return Expanded(
      child: Container(
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            EcommerceTabBarView1(),
            EcommerceTabBarView1(),
            EcommerceTabBarView1(),
            EcommerceTabBarView1(),
            EcommerceTabBarView1(),
            EcommerceTabBarView1(),
            EcommerceTabBarView1(),
          ],
        ),
      ),
    );
  }
}
