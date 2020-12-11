import 'dart:ui';

import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class LoginLayout1 extends StatefulWidget {
  LoginLayout1({Key key}) : super(key: key);

  @override
  _LoginLayout1State createState() => _LoginLayout1State();
}

class _LoginLayout1State extends State<LoginLayout1> {
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
      backgroundColor: MyColors.primaryColor,
      body: ListView(
        shrinkWrap: true,
        children: [
          _topWidget(),
          _bottomWidget(),
        ],
      ),
    );
  }

  Widget _topWidget() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Stack(
        children: [
          _backImageWidget(),
          _overLayWidget(),
        ],
      ),
    );
  }

  Widget _bottomWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: FlatButton(
        height: 50.0,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              MyString.log_in,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_outlined,
              size: 30.0,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget _backImageWidget() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
        image: DecorationImage(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1578886141033-b9f066572135?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Y2xpbWJpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _overLayWidget() {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
      ),
      child: _formWidget(),
    );
  }

  Widget _formWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/logo1.png',
            height: 100.0,
            width: 100.0,
          ),
          SizedBox(
            height: 100.0,
          ),
          Text(
            MyString.ready,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            MyString.for_advancher,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
            child: Form(
              key: _key,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      hintText: MyString.email,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
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
                    textAlign: TextAlign.center,
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: MyString.password,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
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
                          color: Colors.white,
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
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
