import 'package:flutterui/ui/pages/phone_verification/phone_varification_layout3_3.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class PhoneVarificationLayout3 extends StatefulWidget {
  PhoneVarificationLayout3({Key key}) : super(key: key);

  @override
  _PhoneVarificationLayout3State createState() =>
      _PhoneVarificationLayout3State();
}

class _PhoneVarificationLayout3State extends State<PhoneVarificationLayout3> {
  GlobalKey<FormState> _key = new GlobalKey();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1527510324148-d503699fe7f5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8YWR2ZW50dXJlfGVufDB8MXwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _logoWidget(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      _verificationWidget(),
                      _formWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _logoWidget() {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Container(
            height: 100.0,
            width: 100.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Image.asset(
              'assets/images/logo1.png',
              height: 100.0,
              width: 100.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _verificationWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            MyString.varification,
            style: TextStyle(
              fontSize: 24.0,
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
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
        child: Column(
          children: [
            TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              cursorColor: Colors.black,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: MyString.enter_phone,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(50.0),
                  ),
                  borderSide: BorderSide(
                    color: MyColors.secondaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PhoneVarificationLayout3x3(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
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
