import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/default_image.dart';
import 'package:foodly/controller/single_controller.dart';
import 'package:foodly/view/home/add_order_screen.dart';
import 'package:foodly/widget/featured_card.dart';
import 'package:foodly/widget/order_card.dart';
import 'package:get/get.dart';
import '../../config/text_style.dart';

class SingleRestaurantScreen extends StatefulWidget {
  const SingleRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<SingleRestaurantScreen> createState() => _SingleRestaurantScreenState();
}

class _SingleRestaurantScreenState extends State<SingleRestaurantScreen> {
  final singleController = Get.put(SingleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.textColor,
          ),
        ),
        actions: [
          SvgPicture.asset(
            DefaultImages.share,
            color: ConstColors.textColor,
          ),
          const SizedBox(width: 10),
          SvgPicture.asset(
            DefaultImages.search,
            color: ConstColors.textColor,
          )
        ],
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
               Padding(
                padding:const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Mayfield Bakery & Cafe",
                  style: pSemiBold20.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "\$\$  •  Chinese  •  American  •  Deshi food",
                  style: pRegular14.copyWith(
                    fontSize: 16,
                    color: ConstColors.text2Color,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      "4.3",
                      style: pSemiBold18.copyWith(
                        fontSize: 14,
                        color: ConstColors.text2Color,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.star,
                      color: ConstColors.primaryColor,
                      size: 15,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "200+ Ratings",
                      style: pSemiBold18.copyWith(
                        fontSize: 14,
                        color: ConstColors.text2Color,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    card(DefaultImages.singleDelivery, "Free", "Delivery"),
                    const SizedBox(width: 22),
                    card(DefaultImages.clock, "25", "Minutes"),
                    const Expanded(child: SizedBox()),
                    Container(
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: ConstColors.primaryColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Center(
                          child: Text(
                            "TAKE AWAY",
                            style: pSemiBold18.copyWith(
                              fontSize: 12,
                              color: ConstColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Featured Items",
                  style: pSemiBold20.copyWith(fontSize: 24),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  itemCount: singleController.featureList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: FeaturedCard(
                        title: singleController.featureList[index].title,
                        image: singleController.featureList[index].image,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  itemCount: singleController.type.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          singleController.boolList[index] = !singleController.boolList[index];
                          for (var i = 0; i < singleController.boolList.length; i++) {
                            if (i == index) {
                            } else {
                              singleController.boolList[i] = false;
                            }
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          singleController.type[index],
                          style: pSemiBold20.copyWith(
                            fontSize: 24,
                            color: singleController.boolList[index] == true ? ConstColors.textColor : ConstColors.text2Color,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Most Populars",
                  style: pSemiBold20.copyWith(fontSize: 24),
                ),
              ),
              const SizedBox(height: 24),
              ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                shrinkWrap: true,
                itemCount: singleController.mostList.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(
                        const AddOrderScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: OrderCard(
                      title: singleController.mostList[index].title,
                      image: singleController.mostList[index].image,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Sea Food",
                  style: pSemiBold20.copyWith(fontSize: 24),
                ),
              ),
              const SizedBox(height: 24),
              ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                shrinkWrap: true,
                itemCount: singleController.seaList.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(
                        const AddOrderScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: OrderCard(
                      title: singleController.seaList[index].title,
                      image: singleController.seaList[index].image,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }

  Widget card(String image, String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  image,
                  color: ConstColors.primaryColor,
                ),
                SizedBox(
                  height: 20,
                  width: 14.34,
                  child: SvgPicture.asset(
                    DefaultImages.active,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: pSemiBold18.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            subtitle,
            style: pRegular14.copyWith(
              fontSize: 14,
              color: ConstColors.text2Color,
            ),
          ),
        ),
      ],
    );
  }
}
