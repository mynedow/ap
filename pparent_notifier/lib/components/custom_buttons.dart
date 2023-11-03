import 'package:flutter/material.dart';
import 'package:pparent_notifier/constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton(
      {super.key,
      required this.onPress,
      required this.title,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(
          right: kDefaultPadding,
        ),
        width: double.infinity,
        height: 68.0,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          gradient: LinearGradient(
            // ignore: prefer_const_literals_to_create_immutables
            colors: [kSecondaryColor, kPrimaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            // ignore: prefer_const_literals_to_create_immutables
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        // ignore: prefer_const_constructors
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_constructors
          children: [
            // ignore: prefer_const_constructors
            Spacer(),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0,
                  ),
            ),
            // ignore: prefer_const_constructors
            Spacer(),
            // ignore: prefer_const_constructors
            Icon(
              iconData,
              size: 30.0,
              color: kOtherColor,
            ),
          ],
        ),
      ),
    );
  }
}
