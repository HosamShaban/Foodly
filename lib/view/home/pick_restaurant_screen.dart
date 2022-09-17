import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/view/home/browse_food_screen.dart';
import 'package:foodly/view/profile/payment_method_screen.dart';
import 'package:foodly/view/tab_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:get/get.dart';

class PickRestaurantScreen extends StatefulWidget {
  const PickRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<PickRestaurantScreen> createState() => _PickRestaurantScreenState();
}

class _PickRestaurantScreenState extends State<PickRestaurantScreen> {
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
          ),
          Container(
            height: Get.height - 100,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rich Table",
                        style: pSemiBold20.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffF1F1F1),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Center(
                              child: Icon(
                                Icons.close,
                                color: ConstColors.text2Color,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 36,
                        decoration: BoxDecoration(
                          color: ConstColors.primaryColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: pSemiBold18.copyWith(
                              fontSize: 12,
                              color: ConstColors.whiteFontColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        "25 min • ",
                        style: pSemiBold18.copyWith(
                          fontSize: 12,
                          color: ConstColors.text2Color,
                        ),
                      ),
                      Text(
                        "Free Delivery",
                        style: pSemiBold18.copyWith(
                          fontSize: 12,
                          color: ConstColors.text2Color,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      physics: const ClampingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children: [
                        SizedBox(
                          height: 66,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                DefaultImages.marker,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                "San Francisco, California",
                                style: pRegular14.copyWith(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: ConstColors.text2Color.withOpacity(0.1),
                          thickness: 1,
                        ),
                        const SizedBox(height: 18),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ratings & Reviews",
                              style: pSemiBold20.copyWith(
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "See all",
                              style: pSemiBold18.copyWith(
                                fontSize: 16,
                                color: ConstColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 3,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            index == 0
                                                ? DefaultImages.profile1
                                                : index == 1
                                                ? DefaultImages.profile2
                                                : DefaultImages.profile3,
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Text(
                                      index == 0
                                          ? "Susie Bridges"
                                          : index == 1
                                          ? "Rodney Miller"
                                          : "Larry Bowers",
                                      style: pSemiBold18.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(width: 18),
                                    Container(
                                      height: 20,
                                      width: 36,
                                      decoration: BoxDecoration(
                                        color: ConstColors.primaryColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          index == 0
                                              ? "5.0"
                                              : index == 1
                                              ? "4.8"
                                              : "5.0",
                                          style: pSemiBold18.copyWith(
                                            fontSize: 12,
                                            color: ConstColors.whiteFontColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  index == 1
                                      ? "One of the best and so much good food corner\nin Colarodo. Specially the burger, Lemonade."
                                      : "Great food I like this place, I think best place\nof Colarodo. Chilling with Friends :)",
                                  style: pRegular14.copyWith(
                                    fontSize: 16,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                index == 1
                                    ? const SizedBox()
                                    : Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4),
                                        child: Container(
                                          height: 64,
                                          width: 64,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                DefaultImages.rating1,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4),
                                        child: Container(
                                          height: 64,
                                          width: 64,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                DefaultImages.rating2,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4),
                                        child: Container(
                                          height: 64,
                                          width: 64,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                DefaultImages.rating3,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4),
                                        child: Container(
                                          height: 64,
                                          width: 64,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                DefaultImages.rating4,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4),
                                        child: Container(
                                          height: 64,
                                          width: 64,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                DefaultImages.rating5,
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: CusttomButton(
                          color: ConstColors.primaryColor,
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const BrowseFoodScreen()));
                          },
                          text: "BROWSE FOOD",
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xffE8E8E8),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child:InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TabScreen()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                DefaultImages.shape,
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}