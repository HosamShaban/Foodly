import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/controller/tab_controller.dart';
import 'package:foodly/view/home/home_view.dart';
import 'package:foodly/view/order/order_view.dart';
import 'package:foodly/view/profile/profile_view.dart';
import 'package:foodly/view/search/search_view.dart';
import 'package:foodly/widget/tab_card.dart';
import 'package:get/get.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final tabController = Get.put(TabScreenController());
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final homeController = Get.put(HomeController());
  @override
  void initState() {
    tabController.tabFlag!.value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ConstColors.whiteFontColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                tabController.tabFlag!.value == 0
                    ? HomeView(
                        scaffoldKey: scaffoldKey,
                      )
                    : tabController.tabFlag!.value == 1
                        ? const SearchView()
                        : tabController.tabFlag!.value == 2
                            ? const OrderView()
                            : const ProfileView(),
              ],
            ),
            Container(
              height: 60,
              width: Get.width,
              decoration: BoxDecoration(
                color: ConstColors.whiteFontColor,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.04),
                    offset: const Offset(0, -2),
                  ),
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.10),
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TabCard(
                    color: tabController.tabFlag!.value == 0
                        ? ConstColors.primaryColor
                        : ConstColors.text2Color,
                    image: DefaultImages.home,
                    title: "1".tr,
                    onTap: () {
                      setState(() {
                        tabController.tabFlag!.value = 0;
                      });
                    },
                    backImage: tabController.tabFlag!.value == 0
                        ? DefaultImages.active
                        : "",
                  ),
                  TabCard(
                    color: tabController.tabFlag!.value == 1
                        ? ConstColors.primaryColor
                        : ConstColors.text2Color,
                    image: DefaultImages.search,
                    title: "2".tr,
                    onTap: () {
                      setState(() {
                        tabController.tabFlag!.value = 1;
                      });
                    },
                    backImage: tabController.tabFlag!.value == 1
                        ? DefaultImages.active
                        : "",
                  ),
                  TabCard(
                    color: tabController.tabFlag!.value == 2
                        ? ConstColors.primaryColor
                        : ConstColors.text2Color,
                    image: DefaultImages.orders,
                    title: "3".tr,
                    onTap: () {
                      setState(() {
                        tabController.tabFlag!.value = 2;
                      });
                    },
                    backImage: tabController.tabFlag!.value == 2
                        ? DefaultImages.active
                        : "",
                  ),
                  TabCard(
                    color: tabController.tabFlag!.value == 3
                        ? ConstColors.primaryColor
                        : ConstColors.text2Color,
                    image: DefaultImages.profile,
                    title: "4".tr,
                    onTap: () {
                      setState(() {
                        tabController.tabFlag!.value = 3;
                      });
                    },
                    backImage: tabController.tabFlag!.value == 3
                        ? DefaultImages.active
                        : "",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
