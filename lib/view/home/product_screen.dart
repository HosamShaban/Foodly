import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/view/home/single_restaurant_screen.dart';
import 'package:foodly/widget/api_card.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        title:  Text(
          "All Product",
          style: pSemiBold20.copyWith(
            color: Colors.black87
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(

          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.textColor,
            size: 20,
          ),
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: homeController.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SingleRestaurantScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: ApiCard(
                          image: homeController.products[index].images![0],
                          title: homeController.products[index].title ?? "",
                          description: homeController.products[index].description ?? "",
                          price: homeController.products[index].price ?? 0.0,
                        ),
                        ),
                      );
                  },
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
