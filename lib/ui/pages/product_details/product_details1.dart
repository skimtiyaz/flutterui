import 'package:flutterui/ui/values/colors.dart';
import 'package:flutter/material.dart';

class ProductDetails1 extends StatefulWidget {
  ProductDetails1({Key key}) : super(key: key);

  @override
  _ProductDetails1State createState() => _ProductDetails1State();
}

class _ProductDetails1State extends State<ProductDetails1> {
  final List<String> ingredients = [
    'ingredients 1',
    'ingredients 2',
    'ingredients 3',
    'ingredients 4',
    'ingredients 5'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background1,
      floatingActionButton: _floatingActionButtonWidget(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            _appBarWidget(),
          ];
        },
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              _nameWidget(),
              _ingredientsColumnWidget(),
              _descriptionColumnWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBarWidget() {
    return SliverAppBar(
      expandedHeight: 250.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "https://images.unsplash.com/photo-1496412705862-e0088f16f791?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
          fit: BoxFit.cover,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(Icons.bookmark_border_outlined),
        )
      ],
    );
  }

  Widget _floatingActionButtonWidget() {
    return FloatingActionButton.extended(
      onPressed: () {},
      backgroundColor: MyColors.color2,
      label: Text('Order Now'),
    );
  }

  Widget _nameWidget() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Food Name',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\u20B9 200.0',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 3.0),
              decoration: BoxDecoration(
                color: MyColors.color2,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '4.4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _ingredientsColumnWidget() {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ingredientsTitleWidget(),
            _ingredientsWidget(),
          ],
        ),
      ),
    );
  }

  Widget _ingredientsTitleWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Ingredients',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _ingredientsWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
            child: Row(
              children: [
                Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: BoxDecoration(
                    color: MyColors.color2,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  ingredients[index],
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _descriptionColumnWidget() {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _descriptionTitleWidget(),
            _descriptionWidget(),
          ],
        ),
      ),
    );
  }

  Widget _descriptionTitleWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Description',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _descriptionWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Et tempor et minim officia velit ipsum labore ad fugiat ex aliquip deserunt sit. Officia reprehenderit est id reprehenderit culpa laborum aute mollit. Ea veniam do aute enim eu nisi reprehenderit ut labore culpa incididunt laboris. Consequat laboris ullamco laboris incididunt cillum duis. Consectetur quis sunt cupidatat sunt pariatur tempor aute officia esse sint.',
          ),
          Text(
            'Et tempor et minim officia velit ipsum labore ad fugiat ex aliquip deserunt sit. Officia reprehenderit est id reprehenderit culpa laborum aute mollit. Ea veniam do aute enim eu nisi reprehenderit ut labore culpa incididunt laboris. Consequat laboris ullamco laboris incididunt cillum duis. Consectetur quis sunt cupidatat sunt pariatur tempor aute officia esse sint.',
          ),
        ],
      ),
    );
  }
}
