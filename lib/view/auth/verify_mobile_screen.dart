import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/view/auth/location_screen.dart';
import 'package:foodly/view/auth/loginto_foodly_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerifyMobileScreen extends StatefulWidget {
  const VerifyMobileScreen({Key? key}) : super(key: key);

  @override
  State<VerifyMobileScreen> createState() => _VerifyMobileScreenState();
}

class _VerifyMobileScreenState extends State<VerifyMobileScreen> {
  final defaultPinTheme = const PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      decoration: BoxDecoration(
        color: ConstColors.whiteFontColor,
      ),
      padding: EdgeInsets.only(right: 10));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ConstColors.whiteFontColor,
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
          "34".tr,
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Center(
              child: Text(
                "39".tr,
                style: pSemiBold20.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "40".tr,
                style: pRegular14.copyWith(
                  fontSize: 16,
                  color: ConstColors.text2Color,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 34),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => {},
            ),
            const SizedBox(height: 34),
            CusttomButton(
              color: ConstColors.primaryColor,
              text: "41".tr,
              onTap: () {
                Get.to(() => const LocationScreen());
              },
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "42".tr,
                  style: pSemiBold18.copyWith(
                    fontSize: 16,
                    color: ConstColors.text2Color,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginToFoodlyScreen(),
                        ));
                  },
                  child: Text(
                    "43".tr,
                    style: pSemiBold18.copyWith(
                      fontSize: 16,
                      color: ConstColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              "33".tr,
              style: pRegular14.copyWith(
                fontSize: 16,
                color: ConstColors.text2Color,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
