import 'package:flutter/material.dart';

import '../../../constants.dart';

class StudentName extends StatelessWidget {
  const StudentName({super.key, required this.studentName});
  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hi',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w200,
              ),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          width: 3.0,
        ),
        Text(
          studentName,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}

class StudentClass extends StatelessWidget {
  const StudentClass({super.key, required this.studentClass});
  final String studentClass;

  @override
  Widget build(BuildContext context) {
    return Text(
      studentClass,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 13.0,
          ),
    );
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({super.key, required this.studentYear});
  final String studentYear;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      // ignore: prefer_const_constructors
      child: Center(
        // ignore: prefer_const_constructors
        child: Text(
          studentYear,
          style:
              // ignore: prefer_const_constructors
              TextStyle(
            fontSize: 12.0,
            color: kTextBlackColor,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}

class StudentPicture extends StatelessWidget {
  const StudentPicture(
      {super.key, required this.picAddress, required this.onPress});
  final String picAddress;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      // ignore: prefer_const_constructors
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: kSecondaryColor,
        // ignore: prefer_const_constructors
        backgroundImage: AssetImage(picAddress),
      ),
    );
  }
}

class StudentDataCard extends StatelessWidget {
  const StudentDataCard(
      {super.key,
      required this.title,
      required this.value,
      required this.onPress});
  final String title;
  final String value;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 16.0,
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 25.0,
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
