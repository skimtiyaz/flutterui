import 'package:flutterui/ui/pages/phone_verification/phone_varification_layout2_2.dart';
import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:flutter/material.dart';

class PhoneVarificationLayout2 extends StatefulWidget {
  PhoneVarificationLayout2({Key key}) : super(key: key);

  @override
  _PhoneVarificationLayout2State createState() =>
      _PhoneVarificationLayout2State();
}

class _PhoneVarificationLayout2State extends State<PhoneVarificationLayout2> {
  GlobalKey<FormState> _key = new GlobalKey();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _stackWiget(),
        ],
      ),
    );
  }

  Widget _stackWiget() {
    return Stack(
      children: [
        _gradientWidget(),
        _logoWidget(),
        _cardWidget(),
      ],
    );
  }

  Widget _gradientWidget() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            MyColors.gradient1,
            MyColors.gradient2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _logoWidget() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
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

  Widget _cardWidget() {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Form(
              key: _key,
              autovalidateMode: AutovalidateMode.always,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyString.enter_phone,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        hintText: MyString.number_hint,
                        hintStyle: TextStyle(
                          color: Colors.grey,
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
                      height: 50.0,
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
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  PhoneVarificationLayout2x2(),
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
                    SizedBox(
                      height: 40.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
