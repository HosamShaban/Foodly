import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/view/auth/signin_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:get/get.dart';

class ReferFriendScreen extends StatefulWidget {
  const ReferFriendScreen({Key? key}) : super(key: key);

  @override
  State<ReferFriendScreen> createState() => _ReferFriendScreenState();
}

class _ReferFriendScreenState extends State<ReferFriendScreen> {
  Future<void> share() async {
    await FlutterShare.share(
      title: 'Example share',
      text: 'Example share text',
      linkUrl: 'https://flutter.dev/',
      chooserTitle: 'Foodly',
    );
  }

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
          "Refer to Friends",
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: SizedBox(
              height: 146.6,
              width: 133.36,
              child: SvgPicture.asset(
                DefaultImages.referFriend,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              "Refer a Friend, Get \$10",
              style: pSemiBold20.copyWith(fontSize: 24),
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(
              "Get \$10 in credits when someone sign up\nusing your refer link",
              style: pRegular14.copyWith(
                fontSize: 16,
                color: ConstColors.text2Color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CusttomButton(
                  color: ConstColors.primaryColor,
                  text: "EMAIL",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));

                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    share();
                  },
                  child: Container(
                    height: 48,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: ConstColors.text2Color,
                      ),
                    ),
                    child: Center(
                     child: CusttomButton(
                        color: ConstColors.text2Color,
                        text:"OTHERS",
                        onTap: () {
                          share();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
