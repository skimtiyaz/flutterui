import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:countdown/countdown.dart';
import 'package:flutter/material.dart';

class PhoneVarificationLayout1x1 extends StatefulWidget {
  PhoneVarificationLayout1x1({Key key}) : super(key: key);

  @override
  _PhoneVarificationLayout1x1State createState() =>
      _PhoneVarificationLayout1x1State();
}

class _PhoneVarificationLayout1x1State
    extends State<PhoneVarificationLayout1x1> {
  GlobalKey<FormState> _key = new GlobalKey();
  final _pinEditingController = TextEditingController();
  String otpTimer = "";
  bool _isResendEnable = false;
  var sub;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }

  void startTimer() {
    setState(() {
      _isResendEnable = false;
    });

    sub = CountDown(new Duration(minutes: 2)).stream.listen(null);

    sub.onData((Duration d) {
      setState(() {
        int sec = d.inSeconds % 60;
        otpTimer = d.inMinutes.toString().padLeft(2, '0') +
            ":" +
            sec.toString().padLeft(2, '0');
      });
    });

    sub.onDone(() {
      setState(() {
        _isResendEnable = true;
      });
    });
  }

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
              text: MyString.otp_via,
              style: TextStyle(color: Colors.grey),
              children: <TextSpan>[
                TextSpan(
                  text: MyString.sms,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
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
              controller: _pinEditingController,
              keyboardType: TextInputType.phone,
              cursorColor: Colors.black,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                hintText: MyString.enter_otp,
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
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: MyColors.primaryColor,
                child: Text(
                  MyString.verify,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: MyString.dont_recive,
                style: TextStyle(color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(
                    text: MyString.resend,
                    style: TextStyle(
                      color:
                          _isResendEnable ? MyColors.primaryColor : Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: ' - ',
                  ),
                  TextSpan(
                    text: otpTimer,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
