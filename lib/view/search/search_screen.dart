import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/controller/search_controller.dart';
import 'package:foodly/view/search/burger_search.dart';
import 'package:foodly/view/search/category_screen.dart';
import 'package:foodly/view/search/subway_screen.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 45,
              child: TextFormField(
                style: const TextStyle(fontSize: 16),
                cursorColor: ConstColors.primaryColor,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 14, top: 8, right: 5),
                    child: SvgPicture.asset(DefaultImages.search),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20, top: 18),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:  Text(
                        "156".tr,
                        style: pRegular14.copyWith(fontSize: 16),

                      ),
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: 10, top: 16, bottom: 8, right: 10),
                  isDense: true,
                  hintText: "2".tr,
                  hintStyle: pSemiBold18.copyWith(
                  fontSize: 18,
                  color: ConstColors.text2Color,
                ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "157".tr,
                    style: pSemiBold18.copyWith(
                      color: const Color(0xff868686),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "93".tr,
                    style: pSemiBold18.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                itemCount: searchController.searchList.length,
                padding: const EdgeInsets.only(left: 20, right: 20),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            const SubWayScreen()));
                           } else if(index == 1) {
                              Get.to(const BurgerSearchScreen());
                          }else if(index == 2){
                            Get.to(const SubWayScreen());
                          }else{
                            Get.to(const CategoryScreen());
                          }
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              DefaultImages.search,
                              color: ConstColors.textColor,
                            ),
                            const SizedBox(width: 19),
                            Text(
                              searchController.searchList[index],
                              style: pSemiBold18.copyWith(fontSize: 16),

                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
