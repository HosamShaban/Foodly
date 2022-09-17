import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/controller/search_controller.dart';
import 'package:foodly/view/search/category_screen.dart';
import 'package:foodly/view/search/search_screen.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "2".tr,
              style: pSemiBold20.copyWith(
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 45,
              child: TextFormField(
                controller: searchController.seachController.value,
                style: const TextStyle(fontSize: 16 , fontWeight: FontWeight.bold,fontFamily: 'Cairo',),
                cursorColor: ConstColors.primaryColor,
                onChanged: (String? value) {
                  FocusScope.of(context).unfocus();
                  Get.to(const SearchScreen());
                  searchController.seachController.value.clear();
                },
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(DefaultImages.search),
                  ),
                  fillColor: const Color(0xffFBFBFB),
                  filled: true,
                  contentPadding: const EdgeInsets.only(
                      left: 10, top: 16, bottom: 10, right: 10),
                  isDense: true,
                  hintText: "Search on Foodly",
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
                itemCount: searchController.restaurantList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      searchController.seachController.value.clear();
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      const CategoryScreen()));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: Get.width / 2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                searchController.restaurantList[index].image,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          searchController.restaurantList[index].title,
                          style: pSemiBold18.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 2),
                         Text(
                          "\$\$  •  Chinese",
                          style: pRegular14.copyWith(
                            fontSize: 16,
                            color: ConstColors.text2Color,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
