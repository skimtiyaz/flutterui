import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class LoginLayout3 extends StatefulWidget {
  LoginLayout3({Key key}) : super(key: key);

  @override
  _LoginLayout3State createState() => _LoginLayout3State();
}

class _LoginLayout3State extends State<LoginLayout3> {
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
      body: ListView(
        children: [
          _logoWidget(),
          _helloWidget(),
          _formWidget(),
        ],
      ),
    );
  }

  Widget _logoWidget() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
      alignment: Alignment.topLeft,
      child: Image.asset(
        'assets/images/logo1.png',
        height: 100.0,
        width: 100.0,
      ),
    );
  }

  Widget _helloWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyString.hello,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            MyString.welcome_back,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _formWidget() {
    return Form(
      key: _key,
      autovalidateMode: AutovalidateMode.always,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
          ),
        ),
        child: Column(
          children: [
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
              height: 20.0,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  MyString.forgot_password,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: MyColors.primaryColor,
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
    );
  }
}
