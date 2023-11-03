import 'package:pparent_notifier/constants.dart';
import 'package:pparent_notifier/routes.dart';
import 'package:pparent_notifier/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  //this wiget is the root of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DIT Parent-Notifier',
      //we use light theme for this app
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
        ),
        //using gogle font for our app,we will use sourceSansPro
        textTheme:
            GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                .apply()
                .copyWith(
                  // ignore: prefer_const_constructors, deprecated_member_use
                  bodySmall: TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                  // ignore: prefer_const_constructors, deprecated_member_use
                  bodyMedium: TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 28.0,
                  ),
                  // ignore: prefer_const_constructors, deprecated_member_use
                  titleSmall: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300),
                ),
        //input decoration theme for allour app
        // ignore: prefer_const_constructors
        inputDecorationTheme: InputDecorationTheme(
          //label style for formField
          // ignore: prefer_const_constructors
          labelStyle: TextStyle(
            fontSize: 15.0,
            color: kPTextLightColor,
            height: 0.5,
          ),
          //this is hint style
          // ignore: prefer_const_constructors
          hintStyle: TextStyle(
            fontSize: 16.0,
            color: kTextBlackColor,
            height: 0.5,
          ),
          //we using uderline input border
          //not outline
          // ignore: prefer_const_constructors
          enabledBorder: UnderlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
              color: kPTextLightColor,
              width: 0.7,
            ),
          ),
          // ignore: prefer_const_constructors
          border: UnderlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
              color: kPTextLightColor,
            ),
          ),
          // ignore: prefer_const_constructors
          disabledBorder: UnderlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
              color: kPTextLightColor,
            ),
          ),
          //on focus change color
          // ignore: prefer_const_constructors
          focusedBorder: UnderlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
          //color change when your enter wrong information
          //we use validator for this process
          // ignore: prefer_const_constructors
          errorBorder: UnderlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
              color: kErrorBorderColor,
              width: 1.2,
            ),
          ),
          //same on focus error color
          // ignore: prefer_const_constructors
          focusedErrorBorder: UnderlineInputBorder(
            // ignore: prefer_const_constructors
            borderSide: BorderSide(
              color: kErrorBorderColor,
              width: 1.2,
            ),
          ),
        ),
      ),
      //initial route for sreen
      //mean first sreen
      initialRoute: SplashScreen.routeName,
      //define the here in order to access any route file here anywhere all over the app
      routes: routes,
    );
  }
}
