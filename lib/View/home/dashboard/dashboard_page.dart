import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';
import 'package:inflack_limited/View/home/dashboard/class_activites.dart';
import 'package:inflack_limited/View/home/dashboard/courses.dart';
import 'package:inflack_limited/View/home/dashboard/exams.dart';
import 'package:inflack_limited/View/home/dashboard/others.dart';
import 'package:inflack_limited/Widgets/big_text.dart';
import 'package:inflack_limited/Widgets/combined_text.dart';
import 'package:inflack_limited/Widgets/medium_text.dart';
import 'package:inflack_limited/Widgets/small_text.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //কোর্সসমূহ
            Courses(
                titleText: 'কোর্সসমূহ',
                itemText: 'বিজ্ঞান',
                itemImg: 'assets/images/science.png'),
            const Divider(
              color: AppColor.shadowColor,
            ),
            SizedBox(
              height: Dimensions.height10,
            ),

            //অন্যান্য
            Others(titleText: 'অন্যান্য', itemText: 'শ্রেণী কার্যক্রম',),
            const Divider(
              color: AppColor.shadowColor,
            ),
            SizedBox(
              height: Dimensions.height10,
            ),

            //পরীক্ষাসমূহ
            Exams(titleText: 'পরীক্ষাসমূহ'),
            const Divider(
              color: AppColor.shadowColor,
            ),
            SizedBox(
              height: Dimensions.height10,
            ),

            //শ্রেনী কার্যক্রম
            ClassActivities(titleText: 'শ্রেনী কার্যক্রম'),
            SizedBox(
              height: Dimensions.height30,
            ),
          ],
        ),
      ),
    );
  }
}
