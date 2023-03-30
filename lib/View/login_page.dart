import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';
import 'package:inflack_limited/Widgets/big_text.dart';
import 'package:inflack_limited/Widgets/custom_button.dart';
import 'package:inflack_limited/Widgets/custom_text_field.dart';
import 'package:inflack_limited/Widgets/small_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppColor.greyColor,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Dimensions.screenWidth,
                  child: const Image(
                    image: AssetImage('assets/images/login.png'),
                  ),
                ),
                BigText(
                  text: 'সাইন ইন',
                  size: 50,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height30, vertical: Dimensions.height40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(hintText: 'ফোন নম্বর'),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      CustomTextField(hintText: 'পাসওয়ার্ড'),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      Row(
                        children: [
                          SmallText(text: 'পাসওয়ার্ড ভুলে গিয়েছেন?'),
                          SmallText(text: 'এখানে ক্লিক করুন', color: AppColor.mainColor,)
                        ],
                      ),

                    ],
                  ),
                ),
                CustomButton(onTap: (){}, text: 'প্রবেশ করুন')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
