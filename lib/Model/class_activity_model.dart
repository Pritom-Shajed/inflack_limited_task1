class ClassActivityModel {
  String icon;
  String title;
  String date;
  Activity activity;

  ClassActivityModel({required this.icon, required this.title, required this.date, required this.activity});

}

class Activity {
  String type;
  String chapter;
  String comments;

  Activity({required this.type, required this.chapter, required this.comments});

}