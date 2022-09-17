import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/view/auth/location_screen.dart';
import 'package:foodly/view/auth/signin_screen.dart';
import 'package:get/get.dart';
import '../../config/colors.dart';
import '../../config/text_style.dart';
import '../../widget/custom_button.dart';
import 'package:foodly/controller/loading_controller.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final loadingController = Get.put(LoadingController());
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: 3,
                  physics: const ClampingScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      loadingController.pageIndex!.value = value;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: loadingController.pageIndex!.value == 0
                              ? 378
                              : loadingController.pageIndex!.value == 1
                              ? 299
                              : 308,
                          child: SvgPicture.asset(
                            loadingController.pageIndex!.value == 0
                                ? DefaultImages.loading1
                                : loadingController.pageIndex!.value == 1
                                ? DefaultImages.loading2
                                : DefaultImages.loading3,
                          ),
                        ),
                        SizedBox(
                            height: loadingController.pageIndex!.value == 0
                                ? 20
                                : 40),
                        Text(
                          loadingController.pageIndex!.value == 0
                              ? "5".tr
                              : loadingController.pageIndex!.value == 1
                              ? "7".tr
                              : "9".tr,
                          style: pSemiBold20.copyWith(fontSize: 30),
                    ),
                        const SizedBox(height: 5),
                        Text(
                          loadingController.pageIndex!.value == 0
                              ? "6".tr
                              : loadingController.pageIndex!.value == 1
                              ? "8".tr
                              : "10".tr,
                        style: pRegular14.copyWith(
                               fontSize: 16,
                               color: ConstColors.text2Color,
                               height: 1.2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 40),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8,
                    width: 12,
                    decoration: BoxDecoration(
                      color: loadingController.pageIndex!.value == 0
                          ? ConstColors.primaryColor
                          : ConstColors.text2Color.withOpacity(0.20),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 8,
                    width:12,
                    decoration: BoxDecoration(
                      color: loadingController.pageIndex!.value == 1
                          ? ConstColors.primaryColor
                          : ConstColors.text2Color.withOpacity(0.20),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 8,
                    width: 12,
                    decoration: BoxDecoration(
                      color: loadingController.pageIndex!.value == 2
                          ? ConstColors.primaryColor
                          : ConstColors.text2Color.withOpacity(0.20),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: CusttomButton(
                        color: ConstColors.primaryColor,
                        text: "11".tr,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationScreen(),));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}