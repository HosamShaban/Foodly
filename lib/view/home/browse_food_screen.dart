import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/browse_controller.dart';
import 'package:foodly/view/home/find_restaurant_screen.dart';
import 'package:foodly/widget/restaurant_card.dart';
import 'package:get/get.dart';

class BrowseFoodScreen extends StatefulWidget {
  const BrowseFoodScreen({Key? key}) : super(key: key);

  @override
  State<BrowseFoodScreen> createState() => _BrowseFoodScreenState();
}

class _BrowseFoodScreenState extends State<BrowseFoodScreen> {
  final browseController = Get.put(BrowseController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
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
        title:  Text(
          "Browse Foods",
          style: pSemiBold20.copyWith(
            fontSize: 20,
            color: Colors.black87
          ),
        ),
      ),
      body: ListView.builder(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        itemCount: browseController.browseList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>  const FindRestaurantScreen()));
                },
          child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: RestaurantCard(
                    title: browseController.browseList[index].title,
                    image: browseController.browseList[index].image,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Divider(
                color: ConstColors.text2Color.withOpacity(0.1),
                thickness: 1,
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
