import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class LoginLayout2 extends StatefulWidget {
  LoginLayout2({Key key}) : super(key: key);

  @override
  _LoginLayout2State createState() => _LoginLayout2State();
}

class _LoginLayout2State extends State<LoginLayout2> {
  GlobalKey<FormState> _key = new GlobalKey();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  void _passwordtoggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              _bottomWidget(),
              _topWidget(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bottomWidget() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1602330401827-3a2764288556?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8cm5TS0RId3dZVWt8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/logo1.png',
              height: 100.0,
              width: 100.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _topWidget() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        Form(
          key: _key,
          autovalidateMode: AutovalidateMode.always,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
              ),
            ),
            child: Column(
              children: [
                Text(
                  MyString.log_in,
                  style: TextStyle(fontSize: 26.0),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    hintText: MyString.email,
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColors.secondaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: MyString.password,
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColors.secondaryColor,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: _passwordtoggle,
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.black,
                        size: 18.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    MyString.forgot_password,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.black,
                    child: Text(
                      MyString.log_in,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  MyString.or,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 25.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    MyString.sign_up,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
