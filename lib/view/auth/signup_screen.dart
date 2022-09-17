import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/view/auth/loginto_foodly_screen.dart';
import 'package:foodly/view/auth/signin_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:foodly/widget/custom_textfield.dart';
import 'package:foodly/widget/social_button.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.textColor,
            size: 20,
          ),
        ),
        title:  Text(
          "27".tr,
          style: pSemiBold20.copyWith(
          fontSize: 16,
        ),
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "28".tr,
                   style: pSemiBold18.copyWith(
                     fontSize: 34,
                   ),
                ),
                const SizedBox(height: 20),
                 Text(
                  "29".tr,
                   style: pRegular14.copyWith(
                     fontSize: 16,
                     color: ConstColors.text2Color,
                   ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                     Text(
                      "30".tr,
                       style: pRegular14.copyWith(
                         fontSize: 16,
                         color: ConstColors.text2Color,
                       ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                      },
                      child:  Text(
                        "31".tr,
                        style: pRegular14.copyWith(
                          fontSize: 16,
                          color: ConstColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 34),
                CustomTextField(
                  controller: TextEditingController(),
                  inputType: TextInputType.name,
                  obscureText: false,
                  image: "",
                  labelText: "32".tr,
                ),
                const SizedBox(height: 14),
                CustomTextField(
                  controller: TextEditingController(),
                  inputType: TextInputType.emailAddress,
                  image: DefaultImages.phone,
                  obscureText: false,
                  labelText: "23".tr,
                ),
                const SizedBox(height: 14),
                CustomTextField(
                  controller: TextEditingController(),
                  inputType: TextInputType.visiblePassword,
                  obscureText: true,
                  image: DefaultImages.eye,
                  labelText: "24".tr,
                ),
                const SizedBox(height: 20),
                CusttomButton(
                  color: ConstColors.primaryColor,
                  text: "27".tr,
                  onTap: () {
                    Get.to(
                      const LoginToFoodlyScreen(),
                      transition: Transition.rightToLeft,
                    );
                  },
                ),
                const SizedBox(height: 16),
                 Center(
                  child: Text(
                    "33".tr,
                    style: pRegular14.copyWith(
                      fontSize: 16,
                      color: ConstColors.text2Color,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    "20".tr,
                    style: pSemiBold18.copyWith(
                      fontSize: 16,
                      color: ConstColors.textColor.withOpacity(0.64),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SocialButton(
                  color: const Color(0xff395998),
                  image: DefaultImages.facebook,
                  onTap: () {},
                  text: "21".tr,
                ),
                const SizedBox(height: 16),
                SocialButton(
                  color: const Color(0xff4285F4),
                  image: DefaultImages.google,
                  onTap: () {},
                  text: "22".tr,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
