import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inflack_limited/Controller/home_page_controller.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';
import 'package:inflack_limited/View/home/dashboard/dashboard_page.dart';
import 'package:inflack_limited/Widgets/combined_text.dart';
import 'package:inflack_limited/Widgets/small_text.dart';

import '../../Model/model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController _controller = Get.find();
  int? prepIndex;

  final date = Model.days;

  final tabs = [
    const Center(
      child: Text('মেনু'),
    ),
    const Center(
      child: Text('ইনবক্স'),
    ),
    const DashboardPage(),
    const Center(
      child: Text('প্রোফাইল'),
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: Dimensions.appBarHeight,
        flexibleSpace: Container(
          height: Dimensions.appBarHeight,
          decoration: BoxDecoration(
              gradient: AppColor.gradiantMainColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(Dimensions.radius24),
                  bottomLeft: Radius.circular(Dimensions.radius24))),
          child: Container(
            padding: EdgeInsets.only(
                top: Dimensions.height60,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CombinedText(
                            text1: 'শুভ সকাল ',
                            text2: 'হাফিয নকিব',
                            fontWeight1: FontWeight.normal,
                            fontWeight2: FontWeight.bold,
                            textSize1: Dimensions.textSize18,
                            textSize2: Dimensions.textSize18),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        CombinedText(
                            text1: 'ইস্কুল',
                            text2: ' - এ আপনাকে স্বাগতম',
                            fontWeight1: FontWeight.bold,
                            fontWeight2: FontWeight.normal,
                            textSize1: Dimensions.textSize20,
                            textSize2: Dimensions.textSize20),
                      ],
                    ),
                    CircleAvatar(
                      radius: Dimensions.radius24,
                      backgroundImage:
                          const AssetImage('assets/images/avatar.png'),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      date.length,
                      (index) => InkWell(
                            onTap: () {
                              if (date[index]['isSelected'] == false) {
                                date[index]['isSelected'] = true;
                              } else {
                                date[index]['isSelected'] = false;
                              }

                              if (prepIndex != null) {
                                date[prepIndex!]['isSelected'] = false;
                              }
                              prepIndex = index;
                              setState(() {});
                            },
                            child: Container(
                              padding: EdgeInsets.all(Dimensions.radius8),
                              decoration: BoxDecoration(
                                  color: date[index]['isSelected'] == false
                                      ? Colors.transparent
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius8)),
                              child: Column(
                                children: [
                                  SmallText(
                                    text: date[index]['day'],
                                    color: date[index]['isSelected'] == false ? Colors.white60 : AppColor.mainColor1,
                                  ),
                                  SmallText(
                                    text: date[index]['date'],
                                    color: date[index]['isSelected'] == false ? Colors.white : AppColor.mainColor1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(
        () => tabs[_controller.tabIndex],
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: _controller.tabIndex,
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.mainColor2,
            selectedLabelStyle: const TextStyle(
                color: AppColor.mainColor2, fontWeight: FontWeight.bold),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/menu.png',
                  color: _controller.tabIndex == 0
                      ? AppColor.mainColor2
                      : AppColor.greyColor,
                ),
                label: 'মেনু',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/inbox.png',
                    color: _controller.tabIndex == 1
                        ? AppColor.mainColor2
                        : AppColor.greyColor,
                  ),
                  label: 'ইনবক্স'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/dashboard.png',
                    color: _controller.tabIndex == 2
                        ? AppColor.mainColor2
                        : AppColor.greyColor,),
                  label: 'ড্যাশবোর্ড'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/profile.png',
                    color: _controller.tabIndex == 3
                        ? AppColor.mainColor2
                        : AppColor.greyColor,
                  ),
                  label: 'প্রোফাইল'),
            ],
            onTap: (index) => _controller.updateIndex(index),
          )),
    );
  }
}
