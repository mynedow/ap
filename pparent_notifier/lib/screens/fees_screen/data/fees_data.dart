class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<FeeData> fee = [
  FeeData(
      '90008937', 'November', '8 Nov, 2020', 'Pending', '475,000/=', 'PAY NOW'),
  FeeData(
      '90008936', 'September', '8 Sept, 2020', 'Paid', '675,000/=', 'DOWNLOAD'),
  FeeData('90008555', 'August', '8 Aug, 2020', 'Paid', '475,000/=', 'DOWNLOAD'),
];
