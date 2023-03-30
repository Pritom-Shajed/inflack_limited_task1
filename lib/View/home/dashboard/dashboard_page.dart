import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';
import 'package:inflack_limited/View/home/dashboard/first_part.dart';
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
            FirstPart(
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
            FirstPart(
                titleText: 'অন্যান্য',
                itemText: 'শ্রেণী কার্যক্রম',
                itemImg: 'assets/images/schedule.png'),

            //পরীক্ষাসমূহ
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(text: 'পরীক্ষাসমূহ'),
                Row(
                  children: [
                    SmallText(
                      text: 'সবগুলো দেখুন',
                      color: AppColor.mainColor2,
                      fontWeight: FontWeight.bold,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColor.mainColor2,
                      size: Dimensions.iconSize18,
                    ),
                  ],
                )
              ],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
                itemBuilder: (context,index){
              return Container(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height15,
                    horizontal: Dimensions.height20),
                margin: EdgeInsets.symmetric(vertical: Dimensions.height10),
                decoration: BoxDecoration(
                    color: AppColor.containerBgColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius12)),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                width: Dimensions.height25,
                                child: Image.asset('assets/images/math.png')),
                            SizedBox(
                              width: Dimensions.height10,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      MediumText(
                                        text: 'সাধারণ গণিত',
                                        color: AppColor.mainColor2,
                                        size: Dimensions.textSize16,
                                      ),
                                      SmallText(
                                        text: 'সোম ০৫',
                                        fontWeight: FontWeight.normal,
                                        size: Dimensions.textSize10,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_rounded,
                                        color: AppColor.mainColor1,
                                        size: Dimensions.iconSize13,
                                      ),
                                      SmallText(
                                        text: ' ১১:৩০ - ১২:৩০',
                                        fontWeight: FontWeight.normal,
                                      ),
                                      SizedBox(
                                        width: Dimensions.width25,
                                      ),
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color: AppColor.mainColor1,
                                        size: Dimensions.iconSize13,
                                      ),
                                      SmallText(
                                        text: ' ৭ই আগষ্ট',
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColor.shadowColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Dimensions.height10,),
                        CombinedText(
                            text1: 'অধ্যায় : ',
                            text2: '১৪, ১৫(সরল অংক)',
                            color1: AppColor.mainColor2,
                            color2: AppColor.blackColor,
                            fontWeight1: FontWeight.w500,
                            fontWeight2: FontWeight.bold,
                            textSize1: 14,
                            textSize2: 14),
                        SizedBox(height: Dimensions.height10,),
                        CombinedText(
                            text1: 'পূর্ণমান : ',
                            text2: '২০',
                            color1: AppColor.mainColor2,
                            color2: AppColor.blackColor,
                            fontWeight1: FontWeight.w500,
                            fontWeight2: FontWeight.bold,
                            textSize1: 14,
                            textSize2: 14),
                      ],
                    )
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
