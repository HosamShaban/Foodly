import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/model/products_model.dart';
import 'package:foodly/widget/details_category_card.dart';
import 'package:get/get.dart';

class ElectronicScreen extends StatefulWidget {

  const ElectronicScreen({Key? key , required this.data , required this.aTitle}) : super(key: key);

  final List<Product> data;
  final String aTitle;

  @override
  State<ElectronicScreen> createState() => _ElectronicScreenState();
}

class _ElectronicScreenState extends State<ElectronicScreen> {
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        title: Text(
          widget.aTitle,
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
               GridView.builder(
                 gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   crossAxisSpacing: 20,
                   mainAxisSpacing: 15,
                   mainAxisExtent: 380,
                 ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                     //   Navigator.push(context, MaterialPageRoute(builder: (context) => const SingleRestaurantScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: DetailsCategoryCard(
                          title: widget.data[index].title ?? "",
                          description: widget.data[index].description ?? "",
                          rate: widget.data[index].price.toString(),
                          image: widget.data[index].images![0],
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
