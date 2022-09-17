import 'package:flutter/material.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/widget/payment_tab.dart';
import 'package:get/get.dart';
import '../../config/colors.dart';
import '../../config/text_style.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
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
          "106".tr,
          style: pSemiBold20.copyWith(),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaymentTab(
              image: DefaultImages.payment1,
              title: "107".tr,
              subTitle: "108".tr,
              ontap: () {},
            ),
            PaymentTab(
              image: DefaultImages.payment2,
              title: "109".tr,
              subTitle: "110".tr,
              ontap: () {},
            ),
            PaymentTab(
              image: DefaultImages.payment3,
              title: "111".tr,
              subTitle: "110".tr,
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
