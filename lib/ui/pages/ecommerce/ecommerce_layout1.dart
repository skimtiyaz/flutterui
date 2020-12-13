import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EcommerceLayout1 extends StatefulWidget {
  EcommerceLayout1({Key key}) : super(key: key);

  @override
  _EcommerceLayout1State createState() => _EcommerceLayout1State();
}

class _EcommerceLayout1State extends State<EcommerceLayout1> {
  int _current = 0;

  final List<String> images = [
    'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1560343090-f0409e92791a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZHVjdHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2R1Y3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1491637639811-60e2756cc1c7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fHByb2R1Y3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1513116476489-7635e79feb27?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2R1Y3R8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1594968973184-9040a5a79963?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1594969155368-f19485a9d88c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1561069934-eee225952461?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGRpc2NvdW50fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1513451732213-5775a1c40335?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8c2FsZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.ec_color1,
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          _searchWidget(),
          SizedBox(
            height: 10.0,
          ),
          _sliderWidget(),
          _productsWidget(),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      title: Text(MyString.appName),
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: MyColors.ec_color1,
      actions: [
        InkWell(
          onTap: () {},
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_outline,
              color: Colors.white,
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
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
        ),
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                MyString.search,
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: MyColors.ec_color1,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Icon(
                  Icons.search,
                  size: 18.0,
                  color: Colors.white,
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
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              height: 150.0,
              initialPage: 0,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.8,
              onPageChanged: (index, CarouselPageChangedReason changeReason) {
                setState(
                  () {
                    _current = index;
                  },
                );
              },
            ),
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.grey[300],
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: AnimatedSmoothIndicator(
                activeIndex: _current,
                count: images.length,
                effect: ExpandingDotsEffect(
                  expansionFactor: 3,
                  dotHeight: 5.0,
                  dotWidth: 8.0,
                  activeDotColor: Colors.white,
                  dotColor: Colors.white.withOpacity(0.4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _productsWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80.0),
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _categoriesColumnWiget(),
          _mostPopularColumnWiget(),
          _mostDealColumnWiget(),
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

  _categoriesTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            MyString.categories,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {
              print('object');
            },
            child: Row(
              children: [
                Text(
                  MyString.view_all,
                  style: TextStyle(
                    color: MyColors.ec_color1,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: MyColors.ec_color1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoriesItemWidget() {
    return SizedBox(
      height: 110.0,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _mostPopularColumnWiget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _mostPopularTitleWidget(),
        _mostPopularItemWidget(),
      ],
    );
  }

  Widget _mostPopularTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
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
            child: Row(
              children: [
                Text(
                  MyString.view_all,
                  style: TextStyle(
                    color: MyColors.ec_color1,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: MyColors.ec_color1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostPopularItemWidget() {
    return SizedBox(
      height: 190.0,
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
                            'Name',
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
                          Row(
                            children: [
                              Text(
                                'View',
                                style: TextStyle(
                                  color: MyColors.ec_color1,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                color: MyColors.ec_color1,
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

  Widget _mostDealColumnWiget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _mostDealTitleWidget(),
        _mostDealItemWidget(),
      ],
    );
  }

  Widget _mostDealTitleWidget() {
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
            child: Row(
              children: [
                Text(
                  MyString.view_all,
                  style: TextStyle(
                    color: MyColors.ec_color1,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: MyColors.ec_color1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mostDealItemWidget() {
    return SizedBox(
      height: 190.0,
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
                            'Name',
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
                          Row(
                            children: [
                              Text(
                                'View',
                                style: TextStyle(
                                  color: MyColors.ec_color1,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                color: MyColors.ec_color1,
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
