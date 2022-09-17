import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/view/home/category_screen.dart';
import 'package:foodly/view/home/featured_partner_screen.dart';
import 'package:foodly/view/home/filter_view.dart';
import 'package:foodly/view/home/product_screen.dart';
import 'package:foodly/widget/home_api_card.dart';
import 'package:foodly/widget/home_card.dart';
import 'package:foodly/widget/home_category_card.dart';
import 'package:foodly/widget/restaurant_card.dart';
import 'package:get/get.dart';


class HomeView extends StatefulWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const HomeView({super.key, this.scaffoldKey});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              children: [
                Text(
                  "",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text(
                      "50".tr,
                      style: pSemiBold20.copyWith(
                        fontSize: 14,
                        color: ConstColors.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "48".tr,
                          style: pSemiBold20.copyWith(
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: ConstColors.textColor,
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    widget.scaffoldKey!.currentState!.showBottomSheet(
                      (context) => const FilterView(),
                    );
                  },
                  child: Text(
                    "51".tr,
                    style: pRegular14.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Divider(
            color: const Color(0xff676767).withOpacity(0.10),
            thickness: 1,
          ),
          Expanded(
            child: ListView(
              physics:const ClampingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        child: Swiper(
                          autoplay: true,
                          pagination: const SwiperPagination(
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 30,
                              bottom: 20,
                            ),
                            builder: SwiperPagination.dots,
                          ),
                          itemCount: homeController.swiperImage.length,
                          indicatorLayout: PageIndicatorLayout.SCALE,
                          layout: SwiperLayout.DEFAULT,
                          itemHeight: 200,
                          itemWidth: Get.width,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    homeController.swiperImage[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "52".tr,
                            style: pSemiBold20.copyWith(fontSize: 24),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FeaturedPartnerScreen()));
                            },
                            child: Text(
                              "53".tr,
                              style: pSemiBold18.copyWith(
                                fontSize: 16,
                                color: ConstColors.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 18),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: homeController.featuredList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: HomeCard(
                                title: homeController.featuredList[index].title,
                                image: homeController.featuredList[index].image,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 18),
                      SizedBox(
                        height: 180,
                        width: Get.width,
                        child: SvgPicture.asset(
                          DefaultImages.h6,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "54".tr,
                            style:
                                pSemiBold20.copyWith(fontSize: 24, height: 1.3),
                          ),
                          Text(
                            "53".tr,
                            style: pSemiBold18.copyWith(
                              fontSize: 16,
                              color: ConstColors.primaryColor,
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 10),

                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          itemCount: homeController.pickList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: HomeCard(
                                title: homeController.pickList[index].title,
                                image: homeController.pickList[index].image,
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 18),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "159".tr,
                            style:
                            pSemiBold20.copyWith(fontSize: 24, height: 1.3),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ProductScreen()));
                            },
                            child: Text(
                              "53".tr,
                              style: pSemiBold18.copyWith(
                                fontSize: 16,
                                color: ConstColors.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      SizedBox(
                        height: 320,
                        child: ListView.builder(
                            itemCount: homeController.products.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {

                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: HomeApiCard(
                                  image: homeController.products[index].images![0],
                                  title: homeController.products[index].title ?? "",
                                  description: homeController.products[index].description ?? "",
                                  price: homeController.products[index].price ?? 0.0,
                                ),
                              );
                            }),
                      ),

                      const SizedBox(height: 18),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "All Category".tr,
                            style:
                            pSemiBold20.copyWith(fontSize: 24, height: 1.3),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen()));
                            },
                            child: Text(
                              "53".tr,
                              style: pSemiBold18.copyWith(
                                fontSize: 16,
                                color: ConstColors.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                            itemCount: homeController.category.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: HomeCategoryCard(
                                  image: homeController.category.toList()[index].image!,
                                  name: homeController.category.toList()[index].name ?? "",
                                ),
                              );
                            }),
                      ),

                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "55".tr,
                            style:
                                pSemiBold20.copyWith(fontSize: 24, height: 1.3),
                          ),
                          Text(
                            "53".tr,
                            style: pSemiBold18.copyWith(
                              fontSize: 16,
                              color: ConstColors.primaryColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var i = 0;
                              i < homeController.restaurantList.length;
                              i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: RestaurantCard(
                                title: homeController.restaurantList[i].title,
                                image: homeController.restaurantList[i].image,
                              ),
                            )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).padding.bottom + 70),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
