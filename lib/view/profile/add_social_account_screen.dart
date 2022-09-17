import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/widget/social_button.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class AddSocialAccountScreen extends StatefulWidget {
  const AddSocialAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddSocialAccountScreen> createState() => _AddSocialAccountScreenState();
}

class _AddSocialAccountScreenState extends State<AddSocialAccountScreen> {
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
          "116".tr,
          style: pSemiBold20.copyWith(),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
             Center(
              child: Text(
                "116".tr,
                style: pSemiBold20.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(height: 24),
             Center(
              child:  Text(
                "117".tr,
                style: pRegular14.copyWith(
                  fontSize: 16,
                  height: 1.5,
                  color: ConstColors.text2Color,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 34),
            SocialButton(
              color: const Color(0xff395998),
              image: DefaultImages.facebook,
              onTap: () {
                Navigator.pop(context);
              },
              text: "21".tr,
            ),
            const SizedBox(height: 16),
            SocialButton(
              color: const Color(0xff4285F4),
              image: DefaultImages.google,
              onTap: () {
                Navigator.pop(context);
              },
              text: "22".tr,
            ),
          ],
        ),
      ),
    );
  }
}
