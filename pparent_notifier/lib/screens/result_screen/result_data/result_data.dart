class ResultData {
  final String subjectName;
  final int totalMarks;
  final int obtainedMarks;
  final String grade;

  ResultData(this.subjectName, this.totalMarks, this.obtainedMarks, this.grade);
}

List<ResultData> result = [
  ResultData('Computer Science', 100, 50, 'D'),
  ResultData('Architecture', 100, 50, 'D'),
  ResultData('Bussiness Management', 100, 90, 'A'),
  ResultData('Programming', 100, 100, 'A'),
  ResultData('Cyber Security', 100, 50, 'D'),
  ResultData('Bussiness Management', 100, 90, 'A'),
  ResultData('Bussiness Management', 100, 90, 'A'),
  ResultData('Bussiness Management', 100, 90, 'A'),
];
