import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/controller/locale_controller.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';


class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.find();
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
          "115".tr,
          style: pSemiBold20.copyWith(),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            CusttomButton(
              color: ConstColors.primaryColor,
              onTap: () {
                controller.changeLang("en");
              },
              text: "25".tr,
            ),
            const SizedBox(height: 16),
            CusttomButton(
              color: ConstColors.primaryColor,
              onTap: () {
                controller.changeLang("ar");

              },
              text: "26".tr,
            ),
          ],
        ),
      ),
    );
  }
}
