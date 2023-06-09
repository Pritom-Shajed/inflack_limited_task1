import 'package:flutter/material.dart';
import 'package:inflack_limited/Model/factory_data.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';
import 'package:inflack_limited/Widgets/big_text.dart';
import 'package:inflack_limited/Widgets/medium_text.dart';
import 'package:inflack_limited/Widgets/small_text.dart';

//কোর্সসমূহ
class Courses extends StatelessWidget {
  final String titleText;
  final String itemText;
  final String itemImg;
  Courses({Key? key, required this.titleText, required this.itemText, required this.itemImg}) : super(key: key);

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
        SizedBox(
          height: Dimensions.height10,
        ),
        SizedBox(
            height: Dimensions.listViewSize1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: FactoryData.courseInfo.length,
                itemBuilder: (context, index){
                  final courseInfo = FactoryData.courseInfo[index];
                  return Container(
                      padding: EdgeInsets.all(Dimensions.height20),
                      margin: EdgeInsets.symmetric(vertical: Dimensions.height10, horizontal: Dimensions.width15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.radius12),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: AppColor.shadowColor,
                              blurRadius: 5.0,
                              offset: Offset(0, 5),
                            ),
                            BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                          ]
                      ),
                      child: Column(
                        children: [
                          SizedBox(width: Dimensions.width50,child: Image.asset(courseInfo.icon),),
                          SizedBox(height: Dimensions.height10,),
                          MediumText(text: courseInfo.title),
                        ],
                      )
                  );
                })
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
      ],
    );
  }
}
