import 'package:flutterui/ui/values/colors.dart';
import 'package:flutterui/ui/values/strings.dart';
import 'package:countdown/countdown.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVarificationLayout2x2 extends StatefulWidget {
  PhoneVarificationLayout2x2({Key key}) : super(key: key);

  @override
  _PhoneVarificationLayout2x2State createState() =>
      _PhoneVarificationLayout2x2State();
}

class _PhoneVarificationLayout2x2State
    extends State<PhoneVarificationLayout2x2> {
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
                    _verificationWidget(),
                    SizedBox(
                      height: 30.0,
                    ),
                    PinCodeTextField(
                      appContext: context,
                      length: 6,
                      controller: _pinEditingController,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      animationType: AnimationType.slide,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldHeight: 40,
                        fieldWidth: 40,
                        selectedColor: MyColors.primaryColor,
                        activeColor: Colors.green,
                        inactiveColor: Colors.grey,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      onChanged: (value) {
                        setState(() {});
                      },
                      onCompleted: (_) {},
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
                          MyString.verify,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: MyString.dont_recive,
                          style: TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                              text: MyString.resend,
                              style: TextStyle(
                                color: _isResendEnable
                                    ? MyColors.primaryColor
                                    : Colors.grey,
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

  Widget _verificationWidget() {
    return Center(
      child: Column(
        children: [
          Text(
            MyString.varification_code,
            style: TextStyle(
              fontSize: 26.0,
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
}
