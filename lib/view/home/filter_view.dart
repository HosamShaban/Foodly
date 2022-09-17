import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/view/tab_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class FilterView extends StatefulWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      color: ConstColors.whiteFontColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    color: ConstColors.textColor,
                  ),
                ),
                 Text(
                  "51".tr,
                   style: pSemiBold20.copyWith(),

                 ),
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.transparent,
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "103".tr,
                   style: pSemiBold18.copyWith(
                     color: const Color(0xff010F07),
                   ),
                ),
                 Text(
                  "93".tr,
                   style: pRegular14.copyWith(
                     color: ConstColors.text2Color,
                     fontSize: 12,
                   ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 20),
                    itemCount: homeController.categoryList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.90,
                      mainAxisExtent: 50,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            homeController.categorySelectList[index] = !homeController.categorySelectList[index];
                          });
                        },
                        child: Container(
                          height: 38,
                          decoration: BoxDecoration(
                            color: homeController.categorySelectList[index] == true ? ConstColors.primaryColor : const Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: Text(
                                homeController.categoryList[index],
                                style: pSemiBold18.copyWith(
                                  color: homeController.categorySelectList[index] == true ? ConstColors.whiteFontColor : ConstColors.text2Color,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        "104".tr,
                         style: pSemiBold18.copyWith(
                           color: const Color(0xff010F07),
                         ),
                      ),
                       Text(
                        "93".tr,
                         style: pRegular14.copyWith(
                           color: ConstColors.text2Color,
                           fontSize: 12,
                         ),
                      )
                    ],
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 20),
                    itemCount: homeController.dietaryList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 50,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            homeController.dietarySelectList[index] = !homeController.dietarySelectList[index];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: homeController.dietarySelectList[index] == true ? ConstColors.primaryColor : const Color(0xffF1F1F1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Center(
                              child: Text(
                                homeController.dietaryList[index],
                                style: pSemiBold18.copyWith(
                                  color: homeController.dietarySelectList[index] == true ? ConstColors.whiteFontColor : ConstColors.text2Color,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        "104".tr,
                           style: pSemiBold18.copyWith(
                             color: const Color(0xff010F07),
                           ),
                      ),
                       Text(
                        "93".tr,
                         style: pRegular14.copyWith(
                           color: ConstColors.text2Color,
                           fontSize: 12,
                         ),
                      )
                    ],
                  ),
                  const SizedBox(height: 18),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: homeController.priceRangeList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              homeController.priceRangeSelectList[index] = !homeController.priceRangeSelectList[index];
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  homeController.priceRangeSelectList[index] == true ? ConstColors.primaryColor : const Color(0xffF1F1F1),
                              child: Text(
                                homeController.priceRangeList[index],
                                style: pSemiBold18.copyWith(
                                  fontSize: 16,
                                  color: homeController.priceRangeSelectList[index] == true ? ConstColors.whiteFontColor : ConstColors.text2Color,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            CusttomButton(
              color: ConstColors.primaryColor,
              text: "105".tr,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TabScreen()));
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
