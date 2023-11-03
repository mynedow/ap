// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pparent_notifier/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pparent_notifier/screens/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  //route name for this sreen
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    //we use the future to go from one screen to another
    Future.delayed(Duration(seconds: 2), () {
      //user will not return back on the splash screen
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('DIT',
                      style: GoogleFonts.pattaya(
                        fontSize: 40.0,
                        fontStyle: FontStyle.italic,
                        color: kTextWhiteColor,
                      )),
                  Text(
                    'Parent-Notifier',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: kTextWhiteColor,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/dit.png',
                height: 100.0,
                width: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
