import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/controller/browse_controller.dart';
import 'package:foodly/view/home/pick_restaurant_screen.dart';
import 'package:foodly/widget/natinal_favorite.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class FindRestaurantScreen extends StatefulWidget {
  const FindRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<FindRestaurantScreen> createState() => _FindRestaurantScreenState();
}

class _FindRestaurantScreenState extends State<FindRestaurantScreen> {
  final browseController = Get.put(BrowseController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  DefaultImages.map,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          radius: 12,
                          backgroundColor: ConstColors.whiteFontColor,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: ConstColors.text2Color,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: ConstColors.whiteFontColor,
                        child: SvgPicture.asset(
                          DefaultImages.search,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Get.height / 1.5,
            width: Get.width,
            decoration: const BoxDecoration(
              color: ConstColors.whiteFontColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 14, right: 14, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Pick Restaurants",
                    style: pSemiBold20.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: ConstColors.primaryColor.withOpacity(0.10),
                          ),
                          child: Center(
                            child: Text(
                              "BURGERS",
                              style: pSemiBold18.copyWith(
                                fontSize: 12,
                                color: ConstColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: ConstColors.text2Color.withOpacity(0.10),
                          ),
                          child: Center(
                            child: Text(
                              "BRUNCH",
                              style: pSemiBold18.copyWith(
                                fontSize: 12,
                                color: ConstColors.text2Color,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            color: ConstColors.text2Color.withOpacity(0.10),
                          ),
                          child: Center(
                            child: Text(
                              "BREAKFAST",
                              style: pSemiBold18.copyWith(
                                fontSize: 12,
                                color: ConstColors.text2Color,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Divider(
                    color: ConstColors.text2Color.withOpacity(0.1),
                    thickness: 1,
                    indent: 35,
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: browseController.pickList.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        mainAxisExtent: 310,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PickRestaurantScreen()));
                          },
                          child: NationalFavorite(
                            title: browseController.pickList[index].title,
                            image: browseController.pickList[index].image,
                            height: 240,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}