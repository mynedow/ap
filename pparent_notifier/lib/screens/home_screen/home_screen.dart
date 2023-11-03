// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pparent_notifier/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pparent_notifier/screens/home_screen/widget/student_data.dart';
import 'package:pparent_notifier/screens/my_profile/my_profile.dart';
import 'package:pparent_notifier/screens/fees_screen/fees_screen.dart';

import '../assignments_screen/assignments_screen.dart';
import '../datasheet_screen/datasheet_screen.dart';
import '../result_screen/result_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //we will divide the screen into two parts
          //fixed height for this part
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(
                          studentName: 'Samir',
                        ),
                        kHalfSizeBox,
                        Center(
                          child: StudentClass(
                            studentClass:
                                'Class OD20-COE | Reg No:200220228635',
                          ),
                        ),
                        kHalfSizeBox,
                        StudentYear(
                          studentYear: '2020 - 2023',
                        )
                      ],
                    ),
                    kHalfSizeBox,
                    StudentPicture(
                      picAddress: 'assets/images/sam.jpg',
                      onPress: () {
                        //go to profile details here
                        Navigator.pushNamed(context, MyProfileScreen.routeName);
                      },
                    ),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      title: 'Attendance',
                      value: '98.02%',
                      onPress: () {
                        //go to attandance
                      },
                    ),
                    StudentDataCard(
                      title: 'Fees Due',
                      value: '475,000/=',
                      onPress: () {
                        //go to fees
                        Navigator.pushNamed(context, FeeScreen.routeName);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          //other will use all the remaining height of screen
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/ask.svg',
                          title: 'Ask',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, DataSheetScreen.routeName);
                          },
                          icon: 'assets/icons/datasheet.svg',
                          title: 'Data Sheets',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/nesdaily.svg',
                          title: 'Daily News',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, ResultScreen.routeName);
                          },
                          icon: 'assets/icons/book.svg',
                          title: 'Result',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/hostel.svg',
                          title: 'Hostel Results',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/logs.svg',
                          title: 'Academic Records',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, AssignmentScreen.routeName);
                          },
                          icon: 'assets/icons/assignment.svg',
                          title: 'Assignments',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/ask.svg',
                          title: 'Ask',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/nhif.svg',
                          title: 'NHIF Payment',
                        ),
                        HomeCard(
                          onPress: () => exit(0),
                          icon: 'assets/icons/exit.svg',
                          title: 'Exit',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 40.0,
              width: 40.0,
              // ignore: deprecated_member_use
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}
