import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/view/home/qrScanner.dart';
import 'package:foodly/view/profile/payment_method_screen.dart';
import 'package:foodly/widget/catd_textfield.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:foodly/widget/custom_textfield.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class AddPyamentScreen extends StatefulWidget {
  const AddPyamentScreen({Key? key}) : super(key: key);

  @override
  State<AddPyamentScreen> createState() => _AddPyamentScreenState();
}

class _AddPyamentScreenState extends State<AddPyamentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.textColor,
            size: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Add your payment methods",
                          style: pSemiBold20.copyWith(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(
                          "This card will only be charged when\nyou place an order.",
                          style: pSemiBold18.copyWith(
                            fontSize: 16,
                            color: ConstColors.text2Color,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const CardTextField(
                        hintText: "4343 4343 4343 4343",
                        image: DefaultImages.addcard,
                        inputType: TextInputType.number,
                        labelText: "",
                        obscureText: false,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Expanded(
                            child: CustomTextField(
                              hintText: "MM/YY",
                              image: "",
                              inputType: TextInputType.number,
                              labelText: "",
                              obscureText: false,
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: CustomTextField(
                              hintText: "CVC",
                              image: "",
                              inputType: TextInputType.number,
                              labelText: "",
                              obscureText: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CusttomButton(
              color: ConstColors.primaryColor,
              text: "ADD CARD",
              onTap: () {
                Get.to(
                  const PaymentMethodScreen(),
                  transition: Transition.rightToLeft,
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>const QrScanner()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ConstColors.textColor.withOpacity(0.2),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      DefaultImages.camera,
                    ),
                    const SizedBox(width: 14),
                    Text(
                      "SCAN CARD",
                      style: pSemiBold18.copyWith(
                        fontSize: 14,
                        color: ConstColors.text2Color,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}