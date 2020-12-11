import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodLayout1 extends StatefulWidget {
  FoodLayout1({Key key}) : super(key: key);

  @override
  _FoodLayout1State createState() => _FoodLayout1State();
}

class _FoodLayout1State extends State<FoodLayout1> {
  int _current = 0;

  final List<String> images = [
    'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1496412705862-e0088f16f791?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1432139555190-58524dae6a55?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGZvb2R8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1447078806655-40579c2520d6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGZvb2R8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1490457843367-34b21b6ccd85?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fGZvb2R8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1541544741938-0af808871cc0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fGZvb2R8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1541491008689-b5d3c6615e2e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          _searchWidget(),
          _sliderWidget(),
          _mostPopularColumnWiget(),
          _mostDealColumnWiget(),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      title: Text(
        MyString.appName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {},
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_outlined,
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
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  Widget _searchWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          print('seach click');
        },
        child: Container(
          height: 40.0,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey.withOpacity(0.7),
              ),
              Text(
                MyString.search_food,
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
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
            itemCount: images.length,
            options: CarouselOptions(
              height: 200.0,
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
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 15.0,
                bottom: 10.0,
              ),
              child: AnimatedSmoothIndicator(
                activeIndex: _current,
                count: images.length,
                effect: ExpandingDotsEffect(
                  expansionFactor: 3,
                  dotHeight: 5.0,
                  dotWidth: 8.0,
                  activeDotColor: MyColors.color2,
                  dotColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostPopularColumnWiget() {
    return Container(
      color: MyColors.background1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _mostPopularTitleWidget(),
          _mostPopularItemWidget(),
        ],
      ),
    );
  }

  Widget _mostPopularTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MyString.most_popular,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              print('object');
            },
            child: Text(
              MyString.see_all,
              style: TextStyle(
                color: MyColors.color2,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostPopularItemWidget() {
    return SizedBox(
      height: 180.0,
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
                      height: 110.0,
                      width: 140.0,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Food Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Esse culpa ipsum',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            'Laborum veniam',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
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

  Widget _mostDealColumnWiget() {
    return Container(
      color: MyColors.background1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _mostDealTitleWidget(),
          _mostDealItemWidget(),
        ],
      ),
    );
  }

  Widget _mostDealTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MyString.most_deal,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              print('object');
            },
            child: Text(
              MyString.see_all,
              style: TextStyle(
                color: MyColors.color2,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostDealItemWidget() {
    return SizedBox(
      height: 180.0,
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
                      height: 110.0,
                      width: 140.0,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Food Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Esse culpa ipsum',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                          Text(
                            'Laborum veniam',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
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
