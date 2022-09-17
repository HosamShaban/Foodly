import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/config/text_style.dart';
import 'package:foodly/controller/home_controller.dart';
import 'package:foodly/model/products_model.dart';
import 'package:foodly/view/home/electronics_screen.dart';
import 'package:foodly/widget/category_card.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        title:  Text(
          "All Category",
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
                  itemCount: homeController.category.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = homeController.category.toList()[index];
                    return InkWell(
                      onTap: () {
                      List<Product> data = [];

                      for(var prod in homeController.products){
                          if(item.id == prod.category?.id){
                            data.add(prod);
                          }
                      }

                      Get.to(() =>  ElectronicScreen(data: data,aTitle: homeController.category.toList()[index].name ?? ""));

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: CategoryCard(
                          image: homeController.category.toList()[index].image!,
                          name: homeController.category.toList()[index].name ?? "",
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
