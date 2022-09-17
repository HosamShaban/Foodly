import 'package:flutter/material.dart';
import 'package:foodly/config/colors.dart';
import 'package:foodly/controller/order_controller.dart';
import 'package:foodly/view/home/add_payment_screen.dart';
import 'package:foodly/view/home/browse_food_screen.dart';
import 'package:foodly/widget/custom_button.dart';
import 'package:foodly/widget/menu_card.dart';
import 'package:get/get.dart';

import '../../config/text_style.dart';

class OrderDetailScreen extends StatefulWidget {
  final String title;
  const OrderDetailScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  final orderController = Get.put(OrderController());
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
        title: Text(
          widget.title == "" ? "91".tr : widget.title,
          style: pSemiBold20.copyWith(
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: orderController.menuList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return MenuCard(
                        title: orderController.menuList[index].title,
                        price: orderController.menuList[index].image,
                        number: index == 2 ? "2" : "1",
                      );
                    },
                  ),
                  amountRow("95".tr, "\$29.4"),
                  const SizedBox(height: 15),
                  amountRow("Delivery", "\$0"),
                  const SizedBox(height: 20),
                  amountRow("96 (incl. VAT)".tr, "\$29.4"),
                  const SizedBox(height: 24),
                  customtRow("97".tr, ConstColors.primaryColor),
                  const SizedBox(height: 10),
                  Divider(
                    color: const Color(0xff676767).withOpacity(0.10),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  customtRow("98".tr, ConstColors.textColor),
                  const SizedBox(height: 10),
                  Divider(
                    color: const Color(0xff676767).withOpacity(0.10),
                    thickness: 1,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
            CusttomButton(
              color: ConstColors.primaryColor,
              text: "CHECKOUT (\$11.98)",
              onTap: () {
                if (widget.title == "") {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPyamentScreen()));
                } else {
                  Navigator.push(context,MaterialPageRoute(builder:(context) =>
                        AlertDialog(
                          insetPadding: const EdgeInsets.only(left: 40, right: 40),
                          titlePadding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                          content: Container(
                            height: 205,
                            decoration: const BoxDecoration(
                              color: ConstColors.whiteFontColor,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 20),
                                 Center(
                                  child: Text(
                                    "100".tr,
                                    style: pSemiBold18.copyWith(
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                 Text(
                                  "101".tr,
                                   style: pRegular14.copyWith(
                                     fontSize: 15,
                                     color: ConstColors.text2Color,
                                     height: 1.5,
                                   ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BrowseFoodScreen()));
                                  },
                                  child:  Text(
                                    "102".tr,
                                    style: pSemiBold18.copyWith(
                                      fontSize: 16,
                                      color: ConstColors.primaryColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  ),
                  );
                Padding(
                          padding: EdgeInsets.only(top: (Get.width / 2) - 28),
                          child: const CircleAvatar(
                            backgroundColor: ConstColors.primaryColor,
                            radius: 26,
                            child: Icon(
                              Icons.check,
                              color: ConstColors.whiteFontColor,
                              size: 20,
                            ),
                          ),
                  );
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget amountRow(String title, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: pRegular14.copyWith(
            fontSize: 16,
          ),
        ),
        Text(
          amount,
          style: pRegular14.copyWith(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget customtRow(String title, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: pRegular14.copyWith(
            fontSize: 16,
            color: color,
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: ConstColors.textColor,
          size: 18,
        )
      ],
    );
  }
}
