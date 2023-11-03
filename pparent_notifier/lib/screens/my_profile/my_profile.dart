import 'package:flutter/material.dart';
import 'package:pparent_notifier/constants.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          // ignore: prefer_const_constructors
          child: Text('My Profile'),
        ),
        actions: [
          // ignore: avoid_unnecessary_containers
          InkWell(
            onTap: () {
              //send report to school managment for your profile
            },
            child: Container(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              // ignore: prefer_const_constructors
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.report_gmailerrorred_outlined),
                  kHalfWidthSizeBox,
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: kPrimaryColor,
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                  // ignore: prefer_const_constructors
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  // ignore: prefer_const_constructors
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              // ignore: prefer_const_constructors
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    // ignore: prefer_const_constructors
                    backgroundImage: AssetImage('assets/images/sam.jpg'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Suleiman, Samir Said',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Class OD20-COE | Reg No:200220228635',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: 14.0,
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            sizedBox,
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                ProfileDetailRow(
                  title: 'Registration Number',
                  value: '200220228635',
                ),
                // ignore: prefer_const_constructors
                ProfileDetailRow(
                  title: 'Acaemic Year',
                  value: '2020-2021',
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                ProfileDetailRow(
                  title: 'Admission class',
                  value: 'OD20-COE',
                ),
                // ignore: prefer_const_constructors
                ProfileDetailRow(
                  title: 'Acaemic Year',
                  value: '2020-2021',
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                ProfileDetailRow(
                  title: 'Date Of Admission',
                  value: '1 Aug, 2020',
                ),
                // ignore: prefer_const_constructors
                ProfileDetailRow(
                  title: 'Date Of Birth',
                  value: '12 May, 1996',
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            ProfileDetailColumn(title: 'Email', value: 'aamir9@gmail.com'),
            // ignore: prefer_const_constructors
            ProfileDetailColumn(title: 'First Kin', value: 'Said Suleiman'),
            // ignore: prefer_const_constructors
            ProfileDetailColumn(title: 'Second Kin', value: 'Suleiman Said  '),
            // ignore: prefer_const_constructors
            ProfileDetailColumn(
                title: 'Phone Number', value: '+255 764 627 576'),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.only(
        right: kDefaultPadding / 4,
        left: kDefaultPadding / 4,
        top: kDefaultPadding / 2,
      ),
      width: MediaQuery.of(context).size.width / 2,
      // ignore: prefer_const_constructors
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kPTextLightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizeBox,
              // ignore: prefer_const_constructors
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizeBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                // ignore: prefer_const_constructors
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          // ignore: prefer_const_constructors
          Icon(
            Icons.lock_outlined,
            size: 20.0,
          )
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: kPTextLightColor,
                      fontSize: 15.0,
                    ),
              ),
              kHalfSizeBox,
              Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: kTextBlackColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600),
              ),
              kHalfSizeBox,
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                // ignore: prefer_const_constructors
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          // ignore: prefer_const_constructors
          Icon(
            Icons.lock_outlined,
            size: 20.0,
          )
        ],
      ),
    );
  }
}
