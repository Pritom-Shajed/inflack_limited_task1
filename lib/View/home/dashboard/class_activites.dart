import 'package:flutter/material.dart';
import 'package:inflack_limited/Model/factory_data.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';
import 'package:inflack_limited/Widgets/big_text.dart';
import 'package:inflack_limited/Widgets/medium_text.dart';
import 'package:inflack_limited/Widgets/small_text.dart';

class ClassActivities extends StatelessWidget {
  final String titleText;

  ClassActivities({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigText(text: titleText),
            InkWell(
              onTap: (){},
              child: Row(
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
              ),
            )
          ],
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: FactoryData.classActivity.length,
            itemBuilder: (context, index) {
              final classActivity = FactoryData.classActivity[index];
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
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: Dimensions.height35,
                                  height: Dimensions.height35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                SizedBox(
                                  height: Dimensions.height20,
                                  child: Image.asset(classActivity.icon),
                                )
                              ],
                            ),
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
                                        text: classActivity.title,
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
                                        Icons.calendar_today_outlined,
                                        color: AppColor.mainColor1,
                                        size: Dimensions.iconSize13,
                                      ),
                                      SmallText(
                                        text: classActivity.date,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            SmallText(
                              text: 'ধরণ',
                              color: AppColor.mainColor2,
                            ),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            SmallText(
                              text: 'অধ্যায়',
                              color: AppColor.mainColor2,
                            ),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            SmallText(
                              text: 'মন্তব্য',
                              color: AppColor.mainColor2,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: Dimensions.height5,
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          children: List.generate(
                              3,
                              (index) => Padding(
                                    padding:  EdgeInsets.only(top: Dimensions.height8,right: Dimensions.height8),
                                    child: MediumText(
                                      text: ':',
                                      color: AppColor.mainColor2,
                                    ),
                                  )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            MediumText(
                              text: classActivity.activity.type,
                              color: AppColor.primaryTextColor,
                            ),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            MediumText(
                              text: classActivity.activity.chapter,
                              color: AppColor.primaryTextColor,
                            ),
                            SizedBox(
                              height: Dimensions.height10,
                            ),
                            MediumText(
                              text: classActivity.activity.comments,
                              color: AppColor.primaryTextColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: Dimensions.height10,
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }
}
