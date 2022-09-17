import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/controller/search_controller.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
                child: TextFormField(
                  style: const TextStyle(fontSize: 16),
                  cursorColor: ConstColors.primaryColor,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(DefaultImages.search),
                    ),
                    fillColor: const Color(0xffFBFBFB),
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                        left: 10, top: 16, bottom: 15, right: 10),
                    isDense: true,
                    hintText: "154".tr,
                      hintStyle: pRegular14.copyWith(
                        fontSize: 16,
                        color: ConstColors.text2Color,
                      ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xffF3F2F2),
                      ),
                    ),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xffF3F2F2),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 1,
                        color: ConstColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "155".tr,
                style: pSemiBold18.copyWith(
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: searchController.categoryList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.99,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                searchController.categoryList[index].image,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: ConstColors.textColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Text(
                          searchController.categoryList[index].title,
                          style: pSemiBold18.copyWith(
                            color: ConstColors.whiteFontColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
