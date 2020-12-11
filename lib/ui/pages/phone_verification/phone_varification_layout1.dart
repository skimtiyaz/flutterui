import 'package:flutterui/ui/pages/phone_verification/phone_varification_layout1_1.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class PhoneVarificationLayout1 extends StatefulWidget {
  PhoneVarificationLayout1({Key key}) : super(key: key);

  @override
  _PhoneVarificationLayout1State createState() =>
      _PhoneVarificationLayout1State();
}

class _PhoneVarificationLayout1State extends State<PhoneVarificationLayout1> {
  GlobalKey<FormState> _key = new GlobalKey();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _logoWidget(),
          _verificationWidget(),
          _formWidget(),
        ],
      ),
    );
  }

  Widget _logoWidget() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/logo1.png',
        height: 100.0,
        width: 100.0,
      ),
    );
  }

  Widget _verificationWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            MyString.varification,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: MyString.we_will,
              style: TextStyle(color: Colors.grey),
              children: <TextSpan>[
                TextSpan(
                  text: MyString.one_timePassword,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(text: MyString.on_this),
              ],
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
        child: Column(
          children: [
            TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              cursorColor: Colors.black,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                hintText: MyString.enter_phone,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColors.secondaryColor,
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PhoneVarificationLayout1x1(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: MyColors.primaryColor,
                child: Text(
                  MyString.send_otp,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
