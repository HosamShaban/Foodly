import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:foodly/widget/custom_textfield.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
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
        title: Text(
          "150".tr,
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        controller: TextEditingController(text: 'Hosam Shaban'),
                        hintText: "152".tr,
                        inputType: TextInputType.name,
                        obscureText: false,
                        image: "",
                        labelText: "32".tr,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: TextEditingController(text: 'Hosam@gmail.com'),
                        hintText: "120".tr,
                        inputType: TextInputType.emailAddress,
                        obscureText: false,
                        image: "",
                        labelText: "23".tr,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        controller: TextEditingController(text: '+970567999242'),
                        hintText: "121".tr,
                        inputType: TextInputType.name,
                        obscureText: false,
                        image: "",
                        labelText: "37".tr,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CusttomButton(
              color: ConstColors.primaryColor,
              text: "151".tr,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
