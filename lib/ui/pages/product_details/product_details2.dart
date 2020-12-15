import 'package:flutter/material.dart';

class ProductDetails2 extends StatefulWidget {
  ProductDetails2({Key key}) : super(key: key);

  @override
  _ProductDetails2State createState() => _ProductDetails2State();
}

class _ProductDetails2State extends State<ProductDetails2> {
  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  List<ListItem> _dropdownItems = [
    ListItem(1, "1 peopel"),
    ListItem(2, "2 peopel"),
    ListItem(3, "3 peopel"),
    ListItem(4, "4 peopel")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems1;
  ListItem _selectedItem1;

  List<ListItem> _dropdownItems1 = [
    ListItem(1, "2 nights"),
    ListItem(2, "3 nights"),
    ListItem(3, "5 nights"),
    ListItem(4, "7 nights")
  ];

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;

    _dropdownMenuItems1 = buildDropDownMenuItems(_dropdownItems1);
    _selectedItem1 = _dropdownMenuItems1[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBarWidget(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1515983206477-c0df29b37a27?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTJ8fGNpdHklMjBiYWNrZ3JvdW5kfGVufDB8MXwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _topColumnWidget(),
            _bottomColumnWidget(),
          ],
        ),
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
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
      ],
    );
  }

  Widget _topColumnWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titalWidget(),
          SizedBox(
            height: 30.0,
          ),
          _dropdownButtonWiget(),
          SizedBox(
            height: 10.0,
          ),
          _dropdownButtonWiget1(),
          SizedBox(
            height: 20.0,
          ),
          _priceWidget(),
        ],
      ),
    );
  }

  Widget _titalWidget() {
    return Text(
      'City',
      style: TextStyle(
        fontSize: 80.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _dropdownButtonWiget() {
    return Container(
      height: 40.0,
      width: 110.0,
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: _selectedItem,
            items: _dropdownMenuItems,
            onChanged: (value) {
              setState(() {
                _selectedItem = value;
              });
            }),
      ),
    );
  }

  Widget _dropdownButtonWiget1() {
    return Container(
      height: 40.0,
      width: 110.0,
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: _selectedItem1,
            items: _dropdownMenuItems1,
            onChanged: (value) {
              setState(() {
                _selectedItem1 = value;
              });
            }),
      ),
    );
  }

  Widget _priceWidget() {
    return Text(
      '\u20B91500',
      style: TextStyle(
        fontSize: 30.0,
      ),
    );
  }

  Widget _bottomColumnWidget() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _starWidget(),
            SizedBox(
              height: 10.0,
            ),
            _descriptionWidget(),
            SizedBox(
              height: 20.0,
            ),
            _bookNowButtonWidget(),
          ],
        ),
      ),
    );
  }

  Widget _starWidget() {
    return Container(
      width: 80.0,
      padding: const EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 3.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }

  Widget _descriptionWidget() {
    return Text(
      'Culpa nulla labore ut do. Eu voluptate dolore sint do qui proident ea elit laboris aliquip cupidatat nisi. Tempor labore dolore sit mollit mollit. Ut sunt esse voluptate ullamco nisi tempor anim. Ea cillum ipsum do id nostrud cupidatat ipsum esse laborum duis enim reprehenderit eu ex. In eu sunt laboris voluptate non excepteur nulla Lorem labore mollit. Culpa tempor ea excepteur anim ullamco est adipisicing cillum ex. Ut reprehenderit ut anim ullamco eu sit anim Lorem.',
      overflow: TextOverflow.fade,
      maxLines: 3,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Widget _bookNowButtonWidget() {
    return Container(
      height: 50.0,
      width: double.maxFinite,
      child: RaisedButton(
        onPressed: () {},
        color: Colors.cyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Book Now'),
            Icon(Icons.arrow_right_alt),
          ],
        ),
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
