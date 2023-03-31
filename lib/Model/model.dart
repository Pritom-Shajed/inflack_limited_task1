///ধরে নিলাম api থেকে data এই json এ আসবে

class Model {

  //Dates of app bar
  static final List<Map<String, dynamic>> days = [
    {
      'day': 'শনি',
      'isSelected': false,
      'date': '১২',
    },
    {
      'day': 'রবি',
      'isSelected': false,
      'date': '১৩',
    },
    {
      'day': 'সোম',
      'isSelected': false,
      'date': '১৪',
    },
    {
      'day': 'মঙ্গল',
      'isSelected': false,
      'date': '১৫',
    },
    {
      'day': 'বুধ',
      'isSelected': false,
      'date': '১৬',
    },
    {
      'day': 'বৃহঃ',
      'isSelected': false,
      'date': '১৭',
    },
    {
      'day': 'শুক্র',
      'isSelected': false,
      'date': '১৪',
    },
  ];

  //Course Info - কোর্সসমূহ
  static final List<Map<String, dynamic>> courseInfo = [
    {
      'icon': 'assets/images/science.png',
      'title': 'বিজ্ঞান',
    },
    {
      'icon': 'assets/images/math_large.png',
      'title': 'গণিত',
    },
    {
      'icon': 'assets/images/business_studies.png',
      'title': 'ব্যবসা শিখা',
    },
    {
      'icon': 'assets/images/science.png',
      'title': 'বিজ্ঞান',
    },
    {
      'icon': 'assets/images/math_large.png',
      'title': 'গণিত',
    },
  ];

  //Other Info - অন্যান্য
  static final List<Map<String, dynamic>> othersInfo = [
    {
      'icon': 'assets/images/schedule.png',
      'title': 'শ্রেণী কার্যক্রম',
    },
    {
      'icon': 'assets/images/grade_sheet.png',
      'title': 'গ্রেড শীট',
    },
    {
      'icon': 'assets/images/routine.png',
      'title': 'রুটিন',
    },
    {
      'icon': 'assets/images/schedule.png',
      'title': 'শ্রেণী কার্যক্রম',
    },
  ];

  //Exam Info - পরীক্ষাসমূহ
  static final List<Map<String, dynamic>> examInfo = [
    {
      'icon': 'assets/images/math.png',
      'title': 'সাধারণ গণিত',
      'time': '১১:৩০ - ১২:০০',
      'date': '৭ই আগষ্ট',
      'details': {
        'chapter': '১৪, ১৫(সরল অংক)',
        'marks': '২০',
      }
    },
    {
      'icon': 'assets/images/biology.png',
      'title': 'জীব বিজ্ঞান',
      'time': '১২:৩০ - ১১:০০',
      'date': '৭ই আগষ্ট',
      'details': {
        'chapter': '১৪, ১৫(সরল অংক)',
        'marks': '২০',
      }
    },
  ];

  //Class Activity - শ্রেনী কার্যক্রম
  static final List<Map<String, dynamic>> classActivity = [
    {
      'icon': 'assets/images/biology.png',
      'title': 'জীব বিজ্ঞান',
      'date': '৭ই আগষ্ট',
      'activity': {
        'type': 'হোম ওয়ার্ক',
        'chapter': 'কোষ বিভাজন',
        'comments': 'সৃজনশীল ১ - ৩',
      }
    },
    {
      'icon': 'assets/images/science.png',
      'title': 'পদার্থ বিজ্ঞান',
      'date': '৭ই আগষ্ট',
      'activity': {
        'type': 'এসাইনমেন্ট',
        'chapter': 'স্থির তড়িৎ',
        'comments': 'সৃজনশীল ১ - ৩',
      }
    },
  ];
}
