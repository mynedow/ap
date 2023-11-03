class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dataSheet = [
  DataSheet(11, 'JAN', 'Computer Sciene', 'Monday', '9:00am'),
  DataSheet(12, 'JAN', 'Computer Sciene', 'Monday', '9:00am'),
  DataSheet(13, 'JAN', 'Computer Sciene', 'Monday', '9:00am'),
  DataSheet(14, 'JAN', 'Computer Sciene', 'Monday', '9:00am'),
  DataSheet(15, 'JAN', 'Architecture', 'Monday', '9:00am'),
  DataSheet(16, 'JAN', 'Computer Sciene', 'Monday', '9:00am'),
  DataSheet(15, 'JAN', 'Architecture', 'Monday', '9:00am'),
];
