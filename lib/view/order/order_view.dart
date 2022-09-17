import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/controller/order_controller.dart';
import 'package:foodly/view/order/order_detail_screen.dart';
import 'package:foodly/widget/order_card.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  final orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppBar().preferredSize.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  "91".tr,
                    style: pSemiBold20.copyWith(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "92".tr,
                            style: pSemiBold20.copyWith(
                              fontSize: 16,
                              color: ConstColors.text2Color,
                            ),
                          ),
                          Text(
                            "93".tr,
                            style: pSemiBold18.copyWith(
                              fontSize: 14,
                            ),
                          ),

                        ],
                      ),
                  const SizedBox(height: 20),

                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: orderController.orderList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>
                                OrderDetailScreen(
                                  title: orderController.orderList[index].title,
                                ),
                              ),
                              );

                            },
                            child: OrderCard(
                              title: orderController.orderList[index].title,
                              image: orderController.orderList[index].image,

                            ),

                          );

                        },

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "94".tr,
                            style: pSemiBold20.copyWith(
                              fontSize: 16,
                              color: ConstColors.text2Color,
                            ),
                          ),
                          Text(
                            "93".tr,
                            style: pSemiBold18.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: orderController.pastList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                OrderDetailScreen(
                                  title: orderController.pastList[index].title,
                                ),
                              ),
                              );

                            },
                            child: OrderCard(
                              title: orderController.pastList[index].title,
                              image: orderController.pastList[index].image,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
