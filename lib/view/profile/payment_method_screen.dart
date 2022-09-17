import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/view/profile/add_card_screen.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
          "127".tr,
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 122.37,
            width: 125,
            child: SvgPicture.asset(
              DefaultImages.paymentMethod,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 30),
           Center(
            child: Text(
              "147".tr,
              style: pSemiBold20.copyWith(fontSize: 24),

            ),
          ),
          const SizedBox(height: 24),
           Center(
            child: Text(
              "148".tr,
              style: pRegular14.copyWith(
                fontSize: 16,
                height: 1.5,
                color: ConstColors.text2Color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          InkWell(
            onTap: () {
          Navigator.push(context , MaterialPageRoute(builder: (context) =>
                const AddCardScreen(),
          )
              );
            },
            child: Container(
              height: 38,
              width: Get.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ConstColors.primaryColor,
                ),
              ),
              child:  Center(
                child:  Text(
                  "149".tr,
                  style: pSemiBold18.copyWith(
                    fontSize: 14,
                    color: ConstColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
