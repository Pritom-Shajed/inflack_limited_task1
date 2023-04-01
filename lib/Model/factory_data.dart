import 'package:inflack_limited/Model/class_activity_model.dart';
import 'package:inflack_limited/Model/course_info_model.dart';
import 'package:inflack_limited/Model/days_model.dart';
import 'package:inflack_limited/Model/exam_info_model.dart';
import 'package:inflack_limited/Model/others_info_model.dart';

///ধরে নিলাম api থেকে data এই json এ আসবে

class FactoryData {

  //Dates of app bar
  static final List<DaysModel> days = [
    DaysModel(day: 'শনি', isSelected: false, date: '১২'),
    DaysModel(day: 'রবি', isSelected: false, date: '১৩'),
    DaysModel(day: 'সোম', isSelected: false, date: '১৪'),
    DaysModel(day: 'মঙ্গল', isSelected: false, date: '১৫'),
    DaysModel(day: 'বুধ', isSelected: false, date: '১৬'),
    DaysModel(day: 'বৃহঃ', isSelected: false, date: '১৭'),
    DaysModel(day: 'শুক্র', isSelected: false, date: '১৮'),
  ];

  //Course Info - কোর্সসমূহ
  static final List<CourseIngoModel> courseInfo = [
    CourseIngoModel(icon: 'assets/images/science.png', title: 'বিজ্ঞান'),
    CourseIngoModel(icon: 'assets/images/math_large.png', title: 'গণিত'),
    CourseIngoModel(
        icon: 'assets/images/business_studies.png', title: 'ব্যবসা শিখা'),
    CourseIngoModel(icon: 'assets/images/science.png', title: 'বিজ্ঞান'),
    CourseIngoModel(icon: 'assets/images/math_large.png', title: 'গণিত'),
  ];

  //Other Info - অন্যান্য
  static final List<OthersInfoModel> othersInfo = [
    OthersInfoModel(
        icon: 'assets/images/schedule.png', title: 'শ্রেণী কার্যক্রম'),
    OthersInfoModel(icon: 'assets/images/grade_sheet.png', title: 'গ্রেড শীট'),
    OthersInfoModel(icon: 'assets/images/routine.png', title: 'রুটিন'),
    OthersInfoModel(
        icon: 'assets/images/schedule.png', title: 'শ্রেণী কার্যক্রম'),
  ];

  //Exam Info - পরীক্ষাসমূহ
  static final List<ExamInfoModel> examInfo = [
    ExamInfoModel(
        icon: 'assets/images/math.png',
        title: 'সাধারণ গণিত',
        time: '১১:৩০ - ১২:০০',
        date: '৭ই আগষ্ট',
        details: Details(chapter: '১৪, ১৫(সরল অংক)', marks: '২০')),
    ExamInfoModel(
        icon: 'assets/images/biology.png',
        title: 'সাধারণ গণিত',
        time: '১১:৩০ - ১২:০০',
        date: '৭ই আগষ্ট',
        details: Details(chapter: '১৪, ১৫(সরল অংক)', marks: '২০')),
  ];

  //Class Activity - শ্রেনী কার্যক্রম
  static final List<ClassActivityModel> classActivity = [
    ClassActivityModel(
        icon: 'assets/images/biology.png',
        title: 'জীব বিজ্ঞান',
        date: '৭ই আগষ্ট',
        activity: Activity(
            type: 'হোম ওয়ার্ক',
            chapter: 'কোষ বিভাজন',
            comments: 'সৃজনশীল ১ - ৩')),
    ClassActivityModel(
        icon: 'assets/images/science.png',
        title: 'পদার্থ বিজ্ঞান',
        date: '৭ই আগষ্ট',
        activity: Activity(
            type: 'এসাইনমেন্ট',
            chapter: 'স্থির তড়িৎ',
            comments: 'সৃজনশীল ১ - ৩')),
  ];
}
