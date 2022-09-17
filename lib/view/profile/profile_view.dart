import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/controller/profile_controller.dart';
import 'package:foodly/view/auth/signin_screen.dart';
import 'package:foodly/view/profile/Language.dart';
import 'package:foodly/view/profile/add_location_screen.dart';
import 'package:foodly/view/profile/add_social_account_screen.dart';
import 'package:foodly/view/profile/change_password_screen.dart';
import 'package:foodly/view/profile/payment_method_screen.dart';
import 'package:foodly/view/profile/profile_setting_screen.dart';
import 'package:foodly/view/profile/refer_friend_screen.dart';
import 'package:foodly/widget/notification_tab.dart';
import 'package:foodly/widget/profile_tab.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';


class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "122".tr,
               style: pSemiBold20.copyWith(
                 fontSize: 28,
               ),
            ),
             Text(
              "123".tr,
               style: pRegular14.copyWith(
                 fontSize: 14,
                 height: 1.5,
                 color: ConstColors.text2Color,
               ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileTab(
                        image: DefaultImages.profile,
                        title: "124".tr,
                        subTitle: "125".tr,
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileSettingScreen()));

                        },
                      ),
                      ProfileTab(
                        image: DefaultImages.lock,
                        title: "118".tr,
                        subTitle: "126".tr,
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePasswordScreen()));
                        },
                      ),
                      ProfileTab(
                        image: DefaultImages.payment,
                        title: "127".tr,
                        subTitle: "128".tr,
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethodScreen()));


                        },
                      ),
                      ProfileTab(
                        image: DefaultImages.marker,
                        title: "112".tr,
                        subTitle: "129".tr,
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddLoacationScreen()));

                        },
                      ),
                      ProfileTab(
                        image: DefaultImages.profileFacebook,
                        title: "116".tr,
                        subTitle: "130".tr,
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddSocialAccountScreen()));

                        },
                      ),
                      ProfileTab(
                        image: DefaultImages.translation,
                        title: "131".tr,
                        subTitle: "115".tr,
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LanguageScreen()));

                        },
                      ),
                      ProfileTab(
                        image: DefaultImages.share,
                        title: "132".tr,
                        subTitle: "133".tr,
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ReferFriendScreen()));

                        },
                      ),
                      const SizedBox(height: 20),
                       Text(
                        "134".tr,
                         style: pSemiBold20.copyWith(
                           fontSize: 16,
                           color: ConstColors.text2Color,
                         ),
                      ),
                      const SizedBox(height: 12),
                      NotificationTab(
                        widget: CupertinoSwitch(
                          onChanged: (value) {
                            setState(() {
                              profileController.isPush.value = value;
                            });
                          },
                          activeColor: ConstColors.primaryColor,
                          value: profileController.isPush.value,
                        ),
                        subTitle: "135".tr,
                        title: "136".tr,
                        ontap: () {},
                      ),
                      NotificationTab(
                        widget: CupertinoSwitch(
                          onChanged: (value) {
                            setState(() {
                              profileController.isnotify.value = value;
                            });
                          },
                          activeColor: ConstColors.primaryColor,
                          value: profileController.isnotify.value,
                        ),
                        subTitle: "137".tr,
                        title: "138".tr,
                        ontap: () {},
                      ),
                      NotificationTab(
                        widget: CupertinoSwitch(
                          onChanged: (value) {
                            setState(() {
                              profileController.isPro.value = value;
                            });
                          },
                          activeColor: ConstColors.primaryColor,
                          value: profileController.isPro.value,
                        ),
                        subTitle: "139".tr,
                        title: "140".tr,
                        ontap: () {},
                      ),
                      const SizedBox(height: 20),
                       Text(
                        "141".tr,
                         style: pSemiBold20.copyWith(
                           fontSize: 16,
                           color: ConstColors.text2Color,
                         ),
                      ),
                      const SizedBox(height: 12),
                      ProfileTab(
                        image: DefaultImages.rating,
                        title: "142".tr,
                        subTitle: "143".tr,
                        ontap: () {},
                      ),
                      ProfileTab(
                        image: DefaultImages.document,
                        title: "144".tr,
                        subTitle: "145".tr,
                        ontap: () {},
                      ),
                      ProfileTab(
                        image: DefaultImages.logout,
                        title: "146".tr,
                        subTitle: "",
                        ontap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          const SignInScreen()));
                        },
                      ),
                      const SizedBox(height: 100),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
