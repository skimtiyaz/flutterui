import 'package:flutter/material.dart';

class FoodPageview1 extends StatefulWidget {
  FoodPageview1({Key key}) : super(key: key);

  @override
  FfoodPageview1State createState() => FfoodPageview1State();
}

class FfoodPageview1State extends State<FoodPageview1> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGl6emF8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1574126154517-d1e0d89ef734?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emF8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1590947132387-155cc02f3212?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cGl6emF8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cGl6emF8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1595854341625-f33ee10dbf94?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8cGl6emF8ZW58MHwwfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHBpenphfGVufDB8MHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1551978129-b73f45d132eb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fHBpenphfGVufDB8MHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fHBpenphfGVufDB8MHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1585778718569-2efde6c55c80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTN8fHBpenphfGVufDB8MHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599553132172-8089d8f65b5c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njh8fHBpenphfGVufDB8MHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titalWidget(),
          SizedBox(
            height: 30.0,
          ),
          _pizzaListWidget(),
          SizedBox(
            height: 30.0,
          ),
          _categoriesColumnWiget(),
        ],
      ),
    );
  }

  Widget _titalWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
      child: Text(
        'Select A Pizza',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _pizzaListWidget() {
    return SizedBox(
      height: 400.0,
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
                      height: 250.0,
                      width: 230.0,
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
                      width: 230.0,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Food Name',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          InkWell(
                            onTap: () {
                              //add full description function
                              //like bottombar or popup box, etc
                            },
                            child: Text(
                              'Magna proident laborum quis nostrud ut mollit tempor esse elit enim. Ad minim minim culpa qui quis. Exercitation est velit consectetur pariatur laborum cillum nulla veniam est velit duis ad.',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '\u20b9 300',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20.0,
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
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Text(
        'Ingredients',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _categoriesItemWidget() {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
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
                        color: Colors.grey[500],
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
}
