// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pparent_notifier/constants.dart';

import 'data/datasheet_data.dart';

class DataSheetScreen extends StatelessWidget {
  const DataSheetScreen({super.key});
  static const String routeName = 'DataSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataSheet'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding),
                    topRight: Radius.circular(kDefaultPadding),
                  ),
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: dataSheet.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: kDefaultPadding / 2,
                        right: kDefaultPadding / 2,
                      ),
                      padding: EdgeInsets.all(kDefaultPadding / 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: kDefaultPadding,
                            child: Divider(
                              thickness: 1.0,
                            ),
                          ),
                          //first needed row than 3column
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //first column
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dataSheet[index].date.toString(),
                                    style: TextStyle(
                                      color: kTextBlackColor,
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    dataSheet[index].monthName,
                                    style: TextStyle(
                                      color: kTextBlackColor,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              //second column
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dataSheet[index].subjectName,
                                    style: TextStyle(
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    dataSheet[index].dayName,
                                    style: TextStyle(
                                      color: kTextBlackColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13.0,
                                    ),
                                  )
                                ],
                              ),
                              //3rd one colomun
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dataSheet[index].time,
                                    style: TextStyle(
                                      color: kPTextLightColor,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: kDefaultPadding,
                            child: Divider(
                              thickness: 1.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
