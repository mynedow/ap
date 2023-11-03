// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pparent_notifier/constants.dart';

import 'data/assigments_data.dart';
import 'widgets/assignments_widgets.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
      ),
      body: Column(
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
                padding: EdgeInsets.all(kDefaultPadding),
                itemCount: assignment.length,
                itemBuilder: (context, index) {
                  // ignore: avoid_unnecessary_containers
                  return Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding),
                            color: kOtherColor,
                            boxShadow: [
                              BoxShadow(
                                color: kPTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: kSecondaryColor.withOpacity(0.4),
                                  borderRadius:
                                      BorderRadius.circular(kDefaultPadding),
                                ),
                                child: Center(
                                  child: Text(
                                    assignment[index].subjectName,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              kHalfSizeBox,
                              Text(
                                assignment[index].topicName,
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              kHalfSizeBox,
                              AssignmentDetailRow(
                                title: 'Assign Date',
                                statusValue: assignment[index].assignDate,
                              ),
                              kHalfSizeBox,
                              AssignmentDetailRow(
                                title: 'Last Date',
                                statusValue: assignment[index].lastDate,
                              ),
                              kHalfSizeBox,
                              AssignmentDetailRow(
                                title: 'Status',
                                statusValue: assignment[index].status,
                              ),
                              kHalfSizeBox,
                              //use  condition to display button
                              if (assignment[index].status == 'Pending' ||
                                  assignment[index].status == 'Not Submitted')
                                //then show the button
                                AssignmentButton(
                                  title: 'To be Submited',
                                  onPress: () {},
                                )
                            ],
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
    );
  }
}
