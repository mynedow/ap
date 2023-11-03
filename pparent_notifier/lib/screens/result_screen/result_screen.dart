// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import '../../constants.dart';
import 'components/result_components.dart';
import 'result_data/result_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
    int oMarks = result.map((e) => e.obtainedMarks).sum.toInt();
    int tMarks = result.map((e) => e.totalMarks).sum.toInt();

    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        children: [
          //here is for circle
          Container(
            margin: EdgeInsets.all(10),
            height: 200.0,
            child: CustomPaint(
              foregroundPainter: CircularPainter(
                backgroundColor: kPrimaryColor,
                lineColor: kOtherColor,
                width: 20.0,
              ),
              child: Center(
                //sum of total marks
                child: Text(
                  '$oMarks\n/\n$tMarks',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
          Text(
            'You are excellent',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w100,
                ),
          ),
          Text(
            'Samir!!',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 26.0,
                ),
          ),
          sizedBox,
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(kDefaultPadding),
                itemCount: result.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding),
                    padding: EdgeInsets.all(kDefaultPadding / 2),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding),
                      boxShadow: [
                        BoxShadow(
                          color: kPTextLightColor,
                          blurRadius: 2.0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              result[index].subjectName,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: kOtherColor),
                              textAlign: TextAlign.start,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${result[index].obtainedMarks}/${result[index].totalMarks}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: kOtherColor),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width:
                                          result[index].totalMarks.toDouble(),
                                      height: 17.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[700],
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(kDefaultPadding),
                                          bottomRight:
                                              Radius.circular(kDefaultPadding),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: result[index]
                                          .obtainedMarks
                                          .toDouble(),
                                      height: 17.0,
                                      decoration: BoxDecoration(
                                        color: result[index].grade == 'D'
                                            ? kErrorBorderColor
                                            : kOtherColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(kDefaultPadding),
                                          bottomRight:
                                              Radius.circular(kDefaultPadding),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  result[index].grade,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(color: kOtherColor),
                                ),
                              ],
                            ),
                          ],
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
