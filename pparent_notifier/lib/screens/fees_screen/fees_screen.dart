// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pparent_notifier/constants.dart';
import 'data/fees_data.dart';
import 'widgets/fees_widgets.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fee'),
      ),
      body: Column(
        children: [
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
                itemCount: fee.length,
                itemBuilder: (context, index) {
                  // ignore: avoid_unnecessary_containers
                  return Container(
                    margin: EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(kDefaultPadding),
                              bottom: Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kPTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              FeeDetailRow(
                                  title: 'Receit No',
                                  statusValue: fee[index].receiptNo),
                              SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                  title: 'Month',
                                  statusValue: fee[index].month),
                              sizedBox,
                              FeeDetailRow(
                                  title: 'Payment Date',
                                  statusValue: fee[index].date),
                              sizedBox,
                              FeeDetailRow(
                                  title: 'Status',
                                  statusValue: fee[index].paymentStatus),
                              sizedBox,
                              SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              FeeDetailRow(
                                  title: 'Total Amount',
                                  statusValue: fee[index].totalAmount),
                              FeeButton(
                                title: fee[index].btnStatus,
                                iconData: fee[index].btnStatus == 'Paid'
                                    ? Icons.download_outlined
                                    : Icons.arrow_forward_outlined,
                                onPress: () {
                                  //got to
                                },
                              ),
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
