class ExamInfoModel {
  String icon;
  String title;
  String time;
  String date;
  Details details;

  ExamInfoModel({required this.icon, required this.title, required this.time, required this.date, required this.details});

}

class Details {
  String chapter;
  String marks;

  Details({required this.chapter, required this.marks});
}