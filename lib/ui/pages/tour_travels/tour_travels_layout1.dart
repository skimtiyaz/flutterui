import 'package:flutter/material.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';

class TourTravelsLayout1 extends StatefulWidget {
  TourTravelsLayout1({Key key}) : super(key: key);

  @override
  _TourTravelsLayout1State createState() => _TourTravelsLayout1State();
}

class _TourTravelsLayout1State extends State<TourTravelsLayout1> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1514924013411-cbf25faa35bb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2l0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1444084316824-dc26d6657664?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y2l0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1444723121867-7a241cacace9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8Y2l0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1543872084-c7bd3822856f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1465447142348-e9952c393450?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1512591290618-904e04936827?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1449086819790-3ebd41d5d3ad?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDR8fGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1519794206461-cccd885bf209?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDV8fGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bG9uZG9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1490642914619-7955a3fd483c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bG9uZG9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  MyColors.tu_color1,
                  MyColors.tu_color2,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          ListView(
            children: [
              _titalWidget(),
              _searchWidget(),
              _categoriesItemWidget(),
              _popularTourColumnWiget(),
              _popularTourColumnWiget1(),
              _popularTourColumnWiget2(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _titalWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Planning For',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Tour',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          print('seach click');
        },
        child: Container(
          height: 50.0,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey.withOpacity(0.7),
              ),
              Text(
                MyString.search,
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

  Widget _categoriesItemWidget() {
    return Container(
      height: 150.0,
      padding: const EdgeInsets.all(20.0),
      alignment: Alignment.center,
      child: ListView.separated(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 20.0,
          );
        },
        itemBuilder: (context, index) {
          bool last = 4 == (index + 1);
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
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wallet_travel,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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

  Widget _popularTourColumnWiget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _popularTourTitleWidget(),
        _popularTourItemWidget(),
      ],
    );
  }

  Widget _popularTourTitleWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular Tour',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
                    color: Colors.grey.withOpacity(0.7),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _popularTourItemWidget() {
    return SizedBox(
      height: 200.0,
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
                      left: 10.0,
                    )
                  : first
                      ? const EdgeInsets.only(left: 20.0)
                      : const EdgeInsets.only(left: 10.0),
              child: Stack(
                children: [
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
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

  Widget _popularTourColumnWiget1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _popularTourTitleWidget1(),
        _popularTourItemWidget1(),
      ],
    );
  }

  Widget _popularTourTitleWidget1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular City',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
                    color: Colors.grey.withOpacity(0.7),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _popularTourItemWidget1() {
    return SizedBox(
      height: 200.0,
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
                      left: 10.0,
                    )
                  : first
                      ? const EdgeInsets.only(left: 20.0)
                      : const EdgeInsets.only(left: 10.0),
              child: Stack(
                children: [
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      'City',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
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

  Widget _popularTourColumnWiget2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _popularTourTitleWidget2(),
        _popularTourItemWidget2(),
      ],
    );
  }

  Widget _popularTourTitleWidget2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular Country',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
                    color: Colors.grey.withOpacity(0.7),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _popularTourItemWidget2() {
    return SizedBox(
      height: 200.0,
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
                      left: 10.0,
                    )
                  : first
                      ? const EdgeInsets.only(left: 20.0)
                      : const EdgeInsets.only(left: 10.0),
              child: Stack(
                children: [
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      'Country',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
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
}
