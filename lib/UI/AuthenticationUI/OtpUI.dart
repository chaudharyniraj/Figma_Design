import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpUI extends StatefulWidget {
  const OtpUI({Key? key}) : super(key: key);

  @override
  _OtpUIState createState() => _OtpUIState();
}

class _OtpUIState extends State<OtpUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Container()),
                Expanded(
                  child: Image(
                    image: AssetImage(
                      'logo.png',
                    ),
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(primary: Colors.orange),
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Enter your OTP',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'A OTP code has been sent to your phone.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          OtpPinField(
            otpPinFieldInputType: OtpPinFieldInputType.none,
            // otpPinInputCustom: "\$",
            onSubmit: (text) {
              print('Entered pin is $text');
            },
            otpPinFieldStyle: OtpPinFieldStyle(
              defaultFieldBorderColor: Colors.orange,
              activeFieldBorderColor: Colors.white,
              defaultFieldBackgroundColor: Colors.white,
              activeFieldBackgroundColor: Colors.white,
            ),
            highlightBorder: true,
            fieldWidth: 50,
            fieldHeight: 50,
            maxLength: 4,
            keyboardType: TextInputType.number,
            autoFocus: false,
            otpPinFieldDecoration:
                OtpPinFieldDecoration.defaultPinBoxDecoration,
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 18.0,
            color: Colors.orange,
            // clipBehavior: Clip.antiAlias,
            child: MaterialButton(
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                ),
                // color: Colors.orange,
                minWidth: MediaQuery.of(context).size.width * 0.7,
                onPressed: () {
                  Navigator.of(context).pushNamed('/accountInfoUI');
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 18.0,
            color: Colors.white,
            // clipBehavior: Clip.antiAlias,
            child: MaterialButton(
                child: Text(
                  "Resend Now",
                  style: TextStyle(color: Colors.black),
                ),
                minWidth: MediaQuery.of(context).size.width * 0.7,
                onPressed: () {
                  // Navigator.of(context).pushNamed('/otpUI');
                }),
          ),
        ],
      )),
    );
  }
}
