import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/view/auth/verify_mobile_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class LoginToFoodlyScreen extends StatefulWidget {
  const LoginToFoodlyScreen({Key? key}) : super(key: key);

  @override
  State<LoginToFoodlyScreen> createState() => _LoginToFoodlyScreenState();
}

class _LoginToFoodlyScreenState extends State<LoginToFoodlyScreen> {
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
          "34".tr,
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Center(
              child: Text(
                "35".tr,
                style: pSemiBold20.copyWith(fontSize: 24),

              ),
            ),
            const SizedBox(height: 16),
             Center(
              child: Text(
                "36".tr,
                style: pRegular14.copyWith(
                  fontSize: 16,
                  color: ConstColors.text2Color,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 34),
             Text(
              "37".tr,
               style: pSemiBold18.copyWith(
                 fontSize: 14,
                 color: ConstColors.text2Color,
               ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 45,
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: CountryCodePicker(
                    onChanged: print,
                    initialSelection: 'فلسطين',
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "05xxxxxxxxxxx",
                      hintStyle:TextStyle(
                        fontSize: 16,
                        color: ConstColors.text2Color,
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Divider(
              color: ConstColors.text2Color.withOpacity(0.2),
              thickness: 1,
            ),
            const Expanded(child: SizedBox()),
            CusttomButton(
              color: ConstColors.primaryColor,
              text: "38".tr,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyMobileScreen(),));
              },
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
          ],
        ),
      ),
    );
  }
}
