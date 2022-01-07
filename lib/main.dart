import 'package:e_commerce/UI/AuthenticationUI/ForgetpasswordUI.dart';
import 'package:e_commerce/UI/AuthenticationUI/OnBoardingUI.dart';
import 'package:e_commerce/UI/GeneralUI/HomeScreenUI.dart';
import 'package:e_commerce/UI/GeneralUI/NavigationbarUI.dart';
import 'package:e_commerce/UI/Profile/ProfileUI.dart';
import 'package:e_commerce/UI/Profile/RecentBookingUI.dart';
import 'package:e_commerce/UI/Profile/RewardsUI.dart';
import 'package:flutter/material.dart';

import 'UI/AuthenticationUI/AccountInfoUI.dart';
import 'UI/AuthenticationUI/LoginUI.dart';
import 'UI/AuthenticationUI/OTPUI.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        // home: OnBoardingUI(),
        initialRoute: '/onBoardingUI',
        routes: {
          '/onBoardingUI': (context) => OnBoardingUI(),
          '/loginUI': (context) => LoginUI(),
          '/otpUI': (context) => OtpUI(),
          '/accountInfoUI': (context) => AccountInfoUI(),
          '/forgetpasswordUI': (context) => ForgetpasswordUI(),
          '/homescreendUI': (context) => HomeScreenUI(),
          '/profileUI': (context) => ProfileUI(),
          '/rewardsUI': (context) => RewardsUI(),
          '/recentBookingUI': (context) => RecentBookingUI(),
        });
  }
}
