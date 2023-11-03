// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:pparent_notifier/screens/login_screen/login_screen.dart';
import 'package:pparent_notifier/screens/splash_screen/splash_screen.dart';
import 'package:pparent_notifier/screens/my_profile/my_profile.dart';
import 'screens/assignments_screen/assignments_screen.dart';
import 'screens/datasheet_screen/datasheet_screen.dart';
import 'screens/home_screen/home_screen.dart';
import 'package:pparent_notifier/screens/fees_screen/fees_screen.dart';

import 'screens/result_screen/result_screen.dart';

Map<String, WidgetBuilder> routes = {
  //all screen will be here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  DataSheetScreen.routeName: (context) => DataSheetScreen(),
  ResultScreen.routeName: (context) => ResultScreen(),
};
