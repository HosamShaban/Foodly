import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/view/auth/ForgotPassword.dart';
import 'package:foodly/view/auth/signup_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:foodly/widget/custom_textfield.dart';
import 'package:foodly/widget/social_button.dart';
import 'loginto_foodly_screen.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
        title:   Text(
          "19".tr,
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
                  "12".tr,
                   style: pSemiBold18.copyWith(
                     fontSize: 34,
                   ),
                ),
                const SizedBox(height: 16),
                 Text(
                  "13".tr,
                   style: pRegular14.copyWith(
                     fontSize: 16,
                     color: ConstColors.text2Color,
                   ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                     Text(
                      "14".tr,
                       style: pRegular14.copyWith(
                         fontSize: 16,
                         color: ConstColors.text2Color,
                       ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                      },
                      child:  Text(
                        "15".tr,
                        style: pRegular14.copyWith(
                          fontSize: 16,
                          color: ConstColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: "16".tr,
                  inputType: TextInputType.emailAddress,
                  image: DefaultImages.phone,
                  obscureText: false,
                  labelText: "16".tr,

                ),
                const SizedBox(height: 14),
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: "17".tr,
                  inputType: TextInputType.visiblePassword,
                  obscureText: true,
                  image: DefaultImages.eye,
                  labelText: "17".tr,
                ),
                const SizedBox(height: 14),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>const ForgotPasswordScreen()),

                    );
                  },
                  child:  Center(
                    child: Text(
                      "18".tr,
                      style: pSemiBold18.copyWith(
                        fontSize: 14,
                        color: ConstColors.textColor.withOpacity(0.64),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CusttomButton(
                  color: ConstColors.primaryColor,
                  text: "19".tr,
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>const LoginToFoodlyScreen()));
                  },
                ),

                const SizedBox(height: 20),
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
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
