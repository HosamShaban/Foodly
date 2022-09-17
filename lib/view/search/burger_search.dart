import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/view/home/single_restaurant_screen.dart';
import 'package:foodly/widget/restaurant_card.dart';
import 'package:get/get.dart';
import '../../config/text_style.dart';

class BurgerSearchScreen extends StatefulWidget {
  const BurgerSearchScreen({Key? key}) : super(key: key);

  @override
  State<BurgerSearchScreen> createState() => _BurgerSearchScreenState();
}

class _BurgerSearchScreenState extends State<BurgerSearchScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: ConstColors.textColor,
                      size: 20,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                   Text(
                    "68".tr,
                     style: pSemiBold20.copyWith(),

                   ),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Divider(
              color: const Color(0xff676767).withOpacity(0.10),
              thickness: 1,
            ),
            const SizedBox(height: 10),
             Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "153".tr,
                style: pSemiBold20.copyWith(),

              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.only(left: 20, right: 20),
                itemCount: homeController.restaurantList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      const SingleRestaurantScreen()));

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: RestaurantCard(
                        title: homeController.restaurantList[index].title,
                        image: homeController.restaurantList[index].image,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
