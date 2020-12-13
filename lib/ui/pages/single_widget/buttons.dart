import 'package:flutter/material.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';

class Buttons extends StatefulWidget {
  Buttons({Key key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Raised Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _raisedButtonsWiget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Flat Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _flatButtonsWiget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Outline Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _outineButtonsWiget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Dropdown Button',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _dropdownButtonWiget(),
          SizedBox(
            height: 200.0,
          ),
        ],
      ),
    );
  }

  Widget _appBarWidget() {
    return AppBar(
      backgroundColor: MyColors.primaryColor,
      title: Text(
        MyString.button,
      ),
    );
  }

  Widget _raisedButtonsWiget() {
    return Wrap(
      children: [
        _disabledRaisedButtonWidget(),
        _enabledRaisedButtonWidget(),
        _roundShapeRaisedButtonWidget(),
        _roundShape1RaisedButtonWidget(),
        _oneSideRoundShapeRaisedButtonWidget(),
        _gradientRaisedButtonWidget(),
      ],
    );
  }

  Widget _disabledRaisedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Disabled'),
          Container(
            width: 100.0,
            child: RaisedButton(
              onPressed: null,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _enabledRaisedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Enabled'),
          Container(
            width: 100.0,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.amberAccent,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShapeRaisedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape'),
          Container(
            width: 100.0,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShape1RaisedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape 1'),
          Container(
            width: 100.0,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _oneSideRoundShapeRaisedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('One Side Round Shape'),
          Container(
            width: 100.0,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                ),
              ),
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _gradientRaisedButtonWidget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Gradient'),
          Container(
            width: 100.0,
            height: 40.0,
            child: RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: 100.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(MyString.button),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _flatButtonsWiget() {
    return Wrap(
      children: [
        _disabledFlatButtonsWiget(),
        _enabledFlatButtonsWiget(),
        _roundShapeFlatButtonsWiget(),
        _roundShape1FlatButtonsWiget(),
        _oneSideRoundFlatButtonsWiget(),
        _gradientFlatButtonsWiget(),
      ],
    );
  }

  Widget _disabledFlatButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Disabled'),
          FlatButton(
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            onPressed: null,
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _enabledFlatButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Enabled'),
          FlatButton(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8.0),
            onPressed: () {},
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _roundShapeFlatButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape'),
          FlatButton(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {},
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _roundShape1FlatButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape 1'),
          FlatButton(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            onPressed: () {},
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _oneSideRoundFlatButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('One Side Round Shape'),
          FlatButton(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(8.0),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
              ),
            ),
            child: Text(MyString.button),
          ),
        ],
      ),
    );
  }

  Widget _gradientFlatButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Gradient'),
          Container(
            width: 100.0,
            height: 40.0,
            child: FlatButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                width: 100.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(MyString.button),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _outineButtonsWiget() {
    return Wrap(
      children: [
        _disabledoutineButtonsWiget(),
        _enabledoutineButtonsWiget(),
        _roundShapeoutineButtonsWiget(),
        _roundShape1outineButtonsWiget(),
        _oneSideRoundShapeoutineButtonsWiget(),
      ],
    );
  }

  Widget _disabledoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Disabled'),
          Container(
            width: 100.0,
            child: OutlineButton(
              onPressed: null,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _enabledoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Enabled'),
          Container(
            width: 100.0,
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: Colors.amberAccent,
              ),
              highlightedBorderColor: Colors.red,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShapeoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape'),
          Container(
            width: 100.0,
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: Colors.amberAccent,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              highlightedBorderColor: Colors.red,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundShape1outineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('Round Shape 1'),
          Container(
            width: 100.0,
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: Colors.amberAccent,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              highlightedBorderColor: Colors.red,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _oneSideRoundShapeoutineButtonsWiget() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text('One Side Round Shape'),
          Container(
            width: 100.0,
            child: OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(
                color: Colors.amberAccent,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                ),
              ),
              highlightedBorderColor: Colors.red,
              child: Text(MyString.button),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dropdownButtonWiget() {
    return Container(
      alignment: Alignment.center,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.blue),
        underline: Container(
          height: 2,
          color: Colors.amberAccent,
        ),
        onChanged: (String newValue) {
          setState(
            () {
              dropdownValue = newValue;
            },
          );
        },
        items: <String>['One', 'Two', 'Three', 'Four']
            .map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
