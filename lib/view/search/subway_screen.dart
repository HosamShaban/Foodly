import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/view/home/single_restaurant_screen.dart';
import 'package:foodly/widget/natinal_favorite.dart';
import 'package:get/get.dart';

class SubWayScreen extends StatefulWidget {
  const SubWayScreen({super.key, this.scaffoldKey});
   final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  State<SubWayScreen> createState() => _SubWayScreenState();
}

class _SubWayScreenState extends State<SubWayScreen> {
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
                    "Subway",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "We have founds 80 results of\nBurger’s",
                    style: pSemiBold18.copyWith(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Search Again",
                      style: pSemiBold18.copyWith(
                        fontSize: 16,
                        color: ConstColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                itemCount: homeController.nationalList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 310,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return  InkWell(
                      onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SingleRestaurantScreen()));
                  },
                  child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: NationalFavorite(
                  title: homeController.nationalList[index].title,
                  image: homeController.nationalList[index].image,
                    height: 240,
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
