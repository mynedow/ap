class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Programming', 'Build an App', '12 june 2023', '13 june 2023', 'Pending'),
  AssignmentData(
    'Cyber Security',
    'Metasploite',
    '8 May 2023',
    '8 may, 2023',
    'Submitted',
  ),
  AssignmentData('Bussiness Management', 'Bussiness ideas', '8 june 2023',
      '9 june 2023', 'Not Submitted'),
  AssignmentData('Bussiness Management', 'Bussiness ideas', '8 june 2023',
      '9 june 2023', 'Pending')
];
