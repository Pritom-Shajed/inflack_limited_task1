import 'package:flutter/material.dart';
import 'package:inflack_limited/Utils/colors.dart';
import 'package:inflack_limited/Utils/dimensions.dart';
import 'package:inflack_limited/Widgets/big_text.dart';
import 'package:inflack_limited/Widgets/custom_button.dart';
import 'package:inflack_limited/Widgets/custom_text_field.dart';
import 'package:inflack_limited/Widgets/small_text.dart';
import 'package:get/get.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image section
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: Dimensions.loginParticlesWidth,
                    height: Dimensions.loginParticlesHeight,
                    child: const Image(
                      image: AssetImage('assets/images/login/particles.png'),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.loginVectorWidth,
                    height: Dimensions.loginVectorHeight,
                    child: const Image(
                      image: AssetImage('assets/images/login/login.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              BigText(
                text: 'সাইন ইন',
                size: Dimensions.textSize40,
              ),
              //form fields
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.height20,
                    vertical: Dimensions.height30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(hintText: 'ফোন নম্বর', inputType: TextInputType.number,),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    CustomTextField(hintText: 'পাসওয়ার্ড', obscureText: true,),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    Row(
                      children: [
                        SmallText(text: 'পাসওয়ার্ড ভুলে গিয়েছেন?'),
                        InkWell(
                          onTap: (){},
                          child: SmallText(
                            text: ' এখানে ক্লিক করুন',
                            color: AppColor.mainColor1,
                            textDecoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //sign in
              CustomButton(onTap: () =>Get.offAllNamed('/home'), text: 'প্রবেশ করুন'),
              SizedBox(
                height: Dimensions.height25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallText(text: 'নতুন নিবন্ধনের জন্যে'),
                  InkWell(
                    onTap: (){},
                    child: SmallText(
                      text: ' এখানে ক্লিক করুন',
                      color: AppColor.mainColor1,
                      textDecoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
